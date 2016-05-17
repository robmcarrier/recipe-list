class Category < ActiveRecord::Base
  has_many :joins
  has_many :recipes, through: :joins

end
