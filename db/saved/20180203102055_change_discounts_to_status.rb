class ChangeDiscountsToStatus < ActiveRecord::Migration[5.1]
  def change
	rename_table :discounts, to :status
  end
end
