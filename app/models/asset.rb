class Asset < ActiveRecord::Base
  validates_presence_of :title
  belongs_to :category, :class_name => "AssetCategory", :foreign_key => "asset_category_id"


  has_attached_file :attachment, 
                    :styles => { :thumb => "100x100>",
                                 :square  => "40x40#" }


end
