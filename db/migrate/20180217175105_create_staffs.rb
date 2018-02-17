class CreateStaffs < ActiveRecord::Migration[5.1]
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.date :dob
      t.string :ppsn
      t.date :startdate
      t.string :position
      t.decimal :salary
      t.string :password_digest

      t.timestamps
    end
  end
end
