class DashboardController < ApplicationController
  def index
    @user_count = User.regular_users.count
    @admin_count = User.admins.count
    @post_count = Post.count
  end
end
