class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :boats do |t|
      t.string :name, null: false, limit: 64
      t.string :pic_link, limit: 512

      t.timestamps
    end
  end
end
