class RecipePolicy < ApplicationPolicy
  

  def destroy?
    record.try(:user) == user
  end
end
