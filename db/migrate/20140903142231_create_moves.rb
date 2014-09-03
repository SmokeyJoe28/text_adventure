class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.string :direction
      t.integer :room_id
      t.integer :destination_id

      t.timestamps
    end
  end
end
