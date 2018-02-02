class ChangeDataTypeForImage < ActiveRecord::Migration[5.1]
  def change
	change_column :parts, :image, :text
	change_column :bicycles, :image, :text
  end
end
