class Join < ActiveRecord::Migration
  def change
    create_table :joins do |t|
      t.integer :recipe_id
      t.integer :category_id
    end
  end
end
