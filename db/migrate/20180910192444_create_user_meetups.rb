class CreateUserMeetups < ActiveRecord::Migration[5.2]
  def change
    create_table :user_meetups do |t|
			t.belongs_to :meetup
			t.belongs_to :user 
      t.timestamps
    end
  end
end
