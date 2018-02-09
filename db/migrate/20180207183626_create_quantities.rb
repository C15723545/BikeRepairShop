class CreateQuantities < ActiveRecord::Migration[5.1]
  def change
    create_table :quantities do |t|
      t.integer :quantity
      t.references :repair, foreign_key: true
      t.references :part, foreign_key: true

      t.timestamps
    end
  end
end
