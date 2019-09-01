class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.int :user_id
      t.int :talk_room_id

      t.timestamps
    end
    add_foreign_key :messages, :users, column: :user_id
    add_foreign_key :messages, :talk_rooms, column: :talk_room_id
  end
end
