class AddIssmoothieToCocktails < ActiveRecord::Migration[5.0]
  def change
    add_column :cocktails, :issmoothie, :integer, :default => 0
  end
end
