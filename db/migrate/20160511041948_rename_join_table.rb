class RenameJoinTable < ActiveRecord::Migration
  def change
    rename_table :recipe_categories, :recipes_categories
  end
end
