class ChangeIntroductionColumnInRequests < ActiveRecord::Migration[5.2]
  def change
    rename_column :requests, :introduction, :intro
  end
end
