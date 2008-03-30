class AddStuffToSite < ActiveRecord::Migration
  def self.up
    add_column :sites, :footer, :text
    add_column :sites, :login, :string
    add_column :sites, :password_encrypted, :string
  end

  def self.down
    remove_column :sites, :password
    remove_column :sites, :login
    remove_column :sites, :footer
  end
end
