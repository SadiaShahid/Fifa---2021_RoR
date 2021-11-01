class DroppingCols < ActiveRecord::Migration[6.1]
  def change
    remove_column :notifications, :recipient_id, :integer
    # remove_column :notifications, :user_id, :integer
    remove_column :notifications, :notifiable_id, :integer
    remove_column :notifications, :notifiable_type, :string

  end
end
