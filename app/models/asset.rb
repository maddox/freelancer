class Asset < ActiveRecord::Base
  validates_presence_of :title
  belongs_to :category, :class_name => "AssetCategory", :foreign_key => "asset_category_id"


  has_attached_file :attachment, 
                    :styles => { :thumb => "300x300>",
                                 :square  => "75x75#" }


end
