class CreateSites < ActiveRecord::Migration
  def self.up
    create_table :sites do |t|
      t.string :title
      t.string :subtitle
      t.text :stylesheet
      t.text :extra_head

      t.timestamps
    end
  end

  def self.down
    drop_table :sites
  end
end
