class AddCocktailtypeToCocktails < ActiveRecord::Migration[5.0]
  def change
    add_column :cocktails, :cocktailtype, :string
  end
end
