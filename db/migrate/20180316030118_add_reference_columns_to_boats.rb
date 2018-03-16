class AddReferenceColumnsToBoats < ActiveRecord::Migration[5.1]
  def change
    add_column :boats, :brand_id, :integer, null: false
    add_column :boats, :type_id, :integer, null: false
  end
end
