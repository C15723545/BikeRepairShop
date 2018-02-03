class AddJobsIdToRepairs < ActiveRecord::Migration[5.1]
  def change
    add_column :repairs, :jobs_id, :decimal
  end
end
