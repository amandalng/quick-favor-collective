class ChangeColumnsInRequests < ActiveRecord::Migration[5.2]
  def change
    remove_column :requests, :to_id
    remove_column :requests, :from_id

    add_reference :requests, :user, foreign_key: true
    add_reference :requests, :requesting_user, foreign_key: { to_table: 'users' }
  end
end
