Rails.application.routes.draw do
  get 'responses/new'
  get 'responses/create'
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  devise_scope :user do
    get '/users', to: 'users/sessions#index'
    get '/users/:id', to: 'users/sessions#show'
    patch '/users/:id', to: 'users/registrations#verify'
    put '/users/:id', to: 'users/registrations#reject'
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [ :show ] do
    resources :favors, only: [ :new, :create ]
    resources :referrals, only: [ :new, :create, :show ]
    resources :requests, only: [ :new, :create, :show ]
    get '/favors', to: 'favors#favors'
  end
  resources :referrals, only: [ :index, :show ]
  resources :favors, only: [ :index, :show, :edit, :update ] do
    member do
      get 'confirmation'
    end
    resources :responses, only: [:new, :create]
  end
  resources :inquiries, only: [ :create, :index, :update ]
  get '/about', to: 'pages#about'
  get '/join', to: 'pages#join'
  get '/contact', to: 'pages#contact'
  get '/admin', to: 'pages#admin'
  get '/membership', to: 'pages#membership'
  get '/rejects', to: 'pages#rejects'
end
