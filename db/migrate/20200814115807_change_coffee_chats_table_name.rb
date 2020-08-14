class ChangeCoffeeChatsTableName < ActiveRecord::Migration[5.2]
  def change
    rename_table :coffee_chats, :requests
  end
end
