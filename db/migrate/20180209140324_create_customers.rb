class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.string :password_digest
      t.boolean :regular
      t.date :required_date
      t.string :description
      t.string :repair_type
      t.string :repair_detail
      t.string :repair_photo

      t.timestamps
    end
  end
end
