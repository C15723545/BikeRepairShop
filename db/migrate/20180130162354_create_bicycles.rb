class CreateBicycles < ActiveRecord::Migration[5.1]
  def change
    create_table :bicycles do |t|
      t.string :make
      t.string :model
      t.string :colour
      t.integer :frame_size
      t.integer :wheel_size
      t.string :extras
      t.string :image
      t.integer :customer_id

      t.timestamps
    end
  end
end
