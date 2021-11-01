class NotificationRelayJob < ApplicationJob
  queue_as :default

  def perform(notification)
    # Do something later
    page = ApplicationController.render partial: "notifications/users/bought", locals: {notification: notification}, formats:[:html]
    ActionCable.server.broadcast "notifications", {html: page}
  end
end
