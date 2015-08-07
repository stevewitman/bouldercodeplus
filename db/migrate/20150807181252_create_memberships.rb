class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer  "user_id"
      t.integer  "activity_id"
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end
