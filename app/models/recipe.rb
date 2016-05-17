class Recipe < ActiveRecord::Base
  has_many :joins
  has_many :categories, through: :joins
  belongs_to :user
  has_many :ingredients
  accepts_nested_attributes_for :categories
  accepts_nested_attributes_for :ingredients,
    allow_destroy: true,
    :reject_if => proc {|attr| attr[:title].blank?}

end
