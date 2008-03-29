require File.dirname(__FILE__) + '/../spec_helper'

describe AssetCategory do
  fixtures :projects, :asset_categories

  describe "when being created" do

    before(:each) do
      @asset_category = AssetCategory.new(:title => 'Home page mock ups', :project_id => 1)
    end

    it "should require a title" do
      @asset_category.title = nil
      @asset_category.save
      @asset_category.should_not be_valid
    end

  end

  describe "with associations" do

    it "should belong to a project" do
      AssetCategory.reflect_on_association(:project).should_not be(nil)
    end

    it "should belong to a project officially" do
      @asset_category = asset_categories(:home_page)
      @asset_category.project.should == projects(:big_project)
    end

  end


end
