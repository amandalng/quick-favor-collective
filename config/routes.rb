Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  devise_scope :user do
    get '/users', to: 'users/sessions#index'
    get '/users/:id', to: 'users/sessions#show'
    patch '/users/:id', to: 'users/sessions#verify'
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [ :show ] do
    resources :favors, only: [ :new, :create ]
    resources :referrals, only: [ :new, :create, :show ]
  end
  resources :referrals, only: [ :index ]
  resources :favors, only: [ :index, :show ]
  resources :inquiries, only: [ :create, :index, :update ]
  get '/about', to: 'pages#about'
  get '/join', to: 'pages#join'
  get '/contact', to: 'pages#contact'
end
