class NotificationsController < ApplicationController
  
  def index
  end
  def create
    @notification = Notification.new(notification_params)
    @notification.user = current_user
    if @notification.save
      render json: {status: 200}
    end
  end
  private
  def notification_params
    params.require(:notification).permit(:action)
  end
end