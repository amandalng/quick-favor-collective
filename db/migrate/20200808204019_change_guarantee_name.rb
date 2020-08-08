class ChangeGuaranteeName < ActiveRecord::Migration[5.2]
  def change
    rename_column :referrals, :guarantee, :friend
  end
end
