class AddGeographyIndustryFieldsToFavors < ActiveRecord::Migration[5.2]
  def change
    add_column :favors, :location, :string
    add_column :favors, :industry, :string
  end
end
