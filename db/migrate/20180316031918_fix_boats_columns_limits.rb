class FixBoatsColumnsLimits < ActiveRecord::Migration[5.1]
  def change
    remove_column :boats, :madein
    remove_column :boats, :engine
    add_column :boats, :madein, :string, limit: 256
    add_column :boats, :engine, :string, limit: 256
  end
end
