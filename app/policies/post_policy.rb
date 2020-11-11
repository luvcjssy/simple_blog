class PostPolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    true
  end

  def create?
    user.present?
  end

  def update?
    return true if user.present? && (user == post.user || user.admin?)
  end

  def destroy?
    return true if user.present? && (user == post.user || user.admin?)
  end

  private

  def post
    record
  end
end
