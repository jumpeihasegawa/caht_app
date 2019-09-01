class CreateTalkRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :talk_rooms do |t|
      t.string :room_name

      t.timestamps
    end
  end
end
