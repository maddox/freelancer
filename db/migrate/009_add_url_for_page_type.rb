class AddUrlForPageType < ActiveRecord::Migration
  def self.up
    add_column :pages, :is_url, :boolean
    add_column :pages, :url, :string
  end

  def self.down
    remove_column :pages, :url
    remove_column :pages, :is_url
  end
end
