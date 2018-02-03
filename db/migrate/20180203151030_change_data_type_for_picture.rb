class ChangeDataTypeForPicture < ActiveRecord::Migration[5.1]
  def change
	change_column :parts, :image, :string
  end
end
