class CreateRepairs < ActiveRecord::Migration[5.1]
  def change
    create_table :repairs do |t|
      t.date :date_out
      t.decimal :cost_quote
      t.decimal :labour_cost
      t.decimal :total_cost
      t.string :repair_detail
      t.integer :customer_id
      t.integer :discount_id

      t.timestamps
    end
  end
end
