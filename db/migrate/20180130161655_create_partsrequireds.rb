class CreatePartsrequireds < ActiveRecord::Migration[5.1]
  def change
    create_table :partsrequireds do |t|
      t.integer :quantity
      t.integer :part_id
      t.integer :repair_id

      t.timestamps
    end
  end
end
