class AddFieldsToCoffeeChat < ActiveRecord::Migration[5.2]
  def change
    add_column :coffee_chats, :from_id, :integer
    add_column :coffee_chats, :to_id, :integer
    add_column :coffee_chats, :introduction, :string
    add_column :coffee_chats, :purpose, :string
  end
end
