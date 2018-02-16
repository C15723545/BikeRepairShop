class CreateRepairs < ActiveRecord::Migration[5.1]
  def change
    create_table :repairs do |t|
      t.date :date_out
      t.decimal :cost_quote
      t.decimal :labour_cost
      t.decimal :total_cost
      t.integer :customer_id
      t.integer :job_id
      t.date :required_date
      t.string :description
      t.string :repair_type
      t.string :repair_detail
      t.string :repair_photo

      t.timestamps
    end
  end
end
