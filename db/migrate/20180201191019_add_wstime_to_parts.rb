class AddWstimeToParts < ActiveRecord::Migration[5.1]
  def change
    add_column :parts, :wstime, :decimal
  end
end
