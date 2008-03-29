class AssetCategory < ActiveRecord::Base
  validates_presence_of :title
  belongs_to :project
  has_many :assets
end
