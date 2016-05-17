class Renametable < ActiveRecord::Migration
  def change
    rename_table :recipe_category, :recipe_categories
  end
end
