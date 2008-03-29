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

  # describe "with associations" do
  # 
  #   it "should belong to a client" do
  #     Asset.reflect_on_association(:client).should_not be(nil)
  #   end
  # 
  #   it "should belong to a client officially" do
  #     @asset = assets(:big_asset)
  #     @asset.client.should == clients(:microsoft)
  #   end
  # 
  #   it "should have many asset_categories" do
  #     Asset.reflect_on_association(:asset_categories).should_not be(nil)
  #   end
  # 
  #   it "should have many assets officially" do
  #     @asset = assets(:big_asset)
  #     @asset.asset_categories.size.should == 2
  #   end
  # 
  # end
  # 


end
