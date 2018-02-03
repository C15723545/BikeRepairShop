class ChangeDataTypeForImage < ActiveRecord::Migration[5.1]
  def change
	change_column :bicycles, :image, :string
	change_column :parts, :image, :string
  end
end
