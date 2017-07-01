class PagesController < ApplicationController
	before_action :authenticate_user!, only: [:dashboard]  

  def home
    if current_user
      redirect_to dashboard_path
    end
  end
  
  def dashboard
    @scheduled = current_user.posts.where(state: "scheduled").order("scheduled_at ASC")
    @history = current_user.posts.where.not(state: "scheduled").order("scheduled_at DESC")
  end
  
end
