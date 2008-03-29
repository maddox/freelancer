class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.integer :client_id
      t.string :title
      t.text :description
      t.string :repository

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
