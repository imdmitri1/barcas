class UpdateBoats < ActiveRecord::Migration[5.1]
  def change
    add_column :boats, :description, :string
    add_column :boats, :length, :string, limit: 32
    add_column :boats, :width, :string, limit: 32
    add_column :boats, :height, :string, limit: 32
    add_column :boats, :carrying, :string, limit: 32
    add_column :boats, :passengers, :string, limit: 32
    add_column :boats, :weight, :string, limit: 32
    add_column :boats, :madein, :string, limit: 32
    add_column :boats, :engine, :string, limit: 64
    remove_column :boats, :pic_link
  end
end
