class CreateMeetups < ActiveRecord::Migration[5.2]
  def change
    create_table :meetups do |t|
      t.string :group_name
      t.integer :event_id
      t.date :date
      t.string :venue_name
      t.string :venue_address
      t.string :venue_city
      t.string :venue_city


      t.timestamps
    end
  end
end
