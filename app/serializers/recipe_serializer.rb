class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  has_many :ingredients
  has_one :user
end
