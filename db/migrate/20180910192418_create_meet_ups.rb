class CreateMeetUps < ActiveRecord::Migration[5.2]
  def change
    create_table :meet_ups do |t|
      t.string :name
      t.string :topic
      t.string :address
      t.string :time

      t.timestamps
    end
  end
end
