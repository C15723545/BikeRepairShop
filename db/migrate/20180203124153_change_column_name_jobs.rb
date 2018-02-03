class ChangeColumnNameJobs < ActiveRecord::Migration[5.1]
  def change
	rename_column :repairs, :jobs_id, :job_id
  end
end
