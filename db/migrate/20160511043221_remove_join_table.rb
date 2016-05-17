class RemoveJoinTable < ActiveRecord::Migration
  def change
    drop_table :recipes_categories
  end
end
