class AddGuaranteeToReferrals < ActiveRecord::Migration[5.2]
  def change
    add_column :referrals, :guarantee, :boolean
  end
end
