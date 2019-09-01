class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.references :users, foreign_key: 'user_id', foreign_key: true
      t.references :talk_rooms, foreign_key: 'talk_room_id', foreign_key: true
      t.string :text
      t.string :image

      t.timestamps
    end
  end
end
