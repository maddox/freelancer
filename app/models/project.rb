class Project < ActiveRecord::Base
  validates_presence_of :title
  
  belongs_to :client
  has_many :asset_categories
end
