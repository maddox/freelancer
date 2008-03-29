class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets do |t|
      t.string :title
      t.integer :asset_category_id

      t.timestamps
    end
  end

  def self.down
    drop_table :assets
  end
end
