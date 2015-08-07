class AddMeetTimeAndMeetPlaceToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :meet_time, :string
    add_column :activities, :meet_place, :string
  end
end
