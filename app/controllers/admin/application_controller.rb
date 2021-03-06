class Admin::ApplicationController < ApplicationController
  before_action :authorize_admin!
  skip_after_action :verify_authorized
  def index
    @events = Event.all
    @users = User.all
    @categories = Category.all
    @comments = Comment.all
    @attendances = Attendance.all
    @likes = Like.where(like: 'like')
    @dislikes = Like.where(like: 'dislike')
  end


  private

  def authorize_admin!
    authenticate_user!
    unless current_user.admin?
      redirect_to root_path, alert: "You must be an admin to do that"
    end
  end
end
