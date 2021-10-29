class Notification < ApplicationRecord
  belongs_to :user
  belons_to :recipient, class_name: 'User'
  belongs_to :notifiable, polymorphic: true
end
