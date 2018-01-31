class CreateParts < ActiveRecord::Migration[5.1]
  def change
    create_table :parts do |t|
      t.string :description
      t.decimal :unit_price
      t.string :image

      t.timestamps
    end
  end
end
