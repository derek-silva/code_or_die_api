class CreateMeetUps < ActiveRecord::Migration[5.2]
  def change
    create_table :meet_ups do |t|

      t.string :topic
      t.string :address
      t.string :description
      t.date :date
      t.time :start_time
      t.time :end_time
      t.integer :user_id

      t.timestamps
    end
  end
end
