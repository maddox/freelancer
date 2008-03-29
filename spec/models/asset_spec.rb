require File.dirname(__FILE__) + '/../spec_helper'

describe Asset do
  fixtures :asset_categories, :assets

  describe "when being created" do

    before(:each) do
      @asset = Asset.new( :title => 'Home Page Alternate 1', :asset_category_id => 1)
    end

    it "should require a title" do
      @asset.title = nil
      @asset.save
      @asset.should_not be_valid
    end

  end

  describe "with associations" do
  
    it "should belong to an asset_category" do
      Asset.reflect_on_association(:category).should_not be(nil)
    end
  
    it "should belong to an asset_category officially" do
      @asset = assets(:home_page_shot)
      @asset.category.should == asset_categories(:home_page)
    end

  end
  


end
