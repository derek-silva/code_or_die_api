class CreateUserMeetUps < ActiveRecord::Migration[5.2]
  def change
    create_table :user_meet_ups do |t|

			t.belongs_to :meet_up
			t.belongs_to :user 
      t.timestamps
    end
  end
end
