class ChangeDataTypeForImage < ActiveRecord::Migration[5.1]
  def change
	change_column :parts, :image, :string
	change_column :bicycles, :image, :string
  end
end