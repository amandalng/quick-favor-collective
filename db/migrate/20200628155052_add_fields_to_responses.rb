class AddFieldsToResponses < ActiveRecord::Migration[5.2]
  def change
    add_column :responses, :message, :text
    add_reference :responses, :user, foreign_key: true
    add_reference :responses, :favor, foreign_key: true
  end
end
