class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :user_id
      t.integer :max
      t.string :title
      t.string :description
      t.date :date
      t.boolean :status
      t.timestamps null: false
    end
  end
end
