class PostPolicy < ApplicationPolicy
  def update?
    record.user_id == user.id || admin_types.include?(user.type)
  end
end

# case 1 = User of record
# case 2 = Admin User
