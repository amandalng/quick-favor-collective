class CreateCoffeeChats < ActiveRecord::Migration[5.2]
  def change
    create_table :coffee_chats do |t|

      t.timestamps
    end
  end
end
