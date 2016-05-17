class JoinTableRecipeCategory < ActiveRecord::Migration
  def change
    create_table :recipe_category do |t|
      t.integer :recipe_id
      t.integer :category_id
    end
  end
end
