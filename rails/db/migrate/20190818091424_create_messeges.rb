class CreateMesseges < ActiveRecord::Migration[5.2]
  def change
    create_table :messeges do |t|
      t.integer :users_id
      t.text :text
      t.integer :tarks_id
      t.timestamps
    end
    add_foreign_key :messeges, :users, column: :users_id
    add_foreign_key :messeges, :tarks, column: :tarks_id
  end
end
