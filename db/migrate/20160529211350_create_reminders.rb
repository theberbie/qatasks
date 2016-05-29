class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|

      t.string :event, :user_id
      

      t.timestamps
    end
  end
end
