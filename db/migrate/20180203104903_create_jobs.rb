class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :status
      t.string :notes

      t.timestamps
    end
  end
end
