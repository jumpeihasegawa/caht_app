class CreateMesseges < ActiveRecord::Migration[5.2]
  def change
    create_table :messeges do |t|
      t.integer :user_id
      t.integer :talk_room_id
      t.text :text
      t.timestamps
    end
    add_foreign_key :messeges, :users, column: :user_id
    add_foreign_key :messeges, :talk_rooms, column: :talk_room_id
  end
end
