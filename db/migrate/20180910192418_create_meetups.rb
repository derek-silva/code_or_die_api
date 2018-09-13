class CreateMeetups < ActiveRecord::Migration[5.2]
  def change
    create_table :meetups do |t|

      t.string :topic
      t.string :address
      t.string :description
      t.date :date
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
