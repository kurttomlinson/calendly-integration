class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.text :invitee_name
      t.datetime :event_start_time
      t.datetime :event_end_time
      t.text :event_type_name
      t.datetime :event_created_at
    end
  end
end
