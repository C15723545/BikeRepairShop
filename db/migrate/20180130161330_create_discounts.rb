class CreateDiscounts < ActiveRecord::Migration[5.1]
  def change
    create_table :discounts do |t|
      t.string :level
      t.integer :rate

      t.timestamps
    end
  end
end
