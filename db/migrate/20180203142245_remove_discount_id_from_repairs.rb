class RemoveDiscountIdFromRepairs < ActiveRecord::Migration[5.1]
  def change
    remove_column :repairs, :discount_id, :integer
  end
end
