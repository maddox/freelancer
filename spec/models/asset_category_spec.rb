require File.dirname(__FILE__) + '/../spec_helper'

describe AssetCategory do
  before(:each) do
    @asset_category = AssetCategory.new
  end

  it "should be valid" do
    @asset_category.should be_valid
  end
end
