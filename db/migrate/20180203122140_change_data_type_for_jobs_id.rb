class ChangeDataTypeForJobsId < ActiveRecord::Migration[5.1]
  def change
	change_column :repairs, :jobs_id, :integer
  end
end
