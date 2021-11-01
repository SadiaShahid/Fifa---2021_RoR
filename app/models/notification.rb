class Notification < ApplicationRecord
  belongs_to :user
  after_commit -> { NotificationRelayJob.perform_later(self) }
end
