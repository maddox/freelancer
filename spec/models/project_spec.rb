require File.dirname(__FILE__) + '/../spec_helper'

describe Project do
  fixtures :clients, :projects

  describe "when being created" do

    before(:each) do
      @project = Project.new( :title => 'Million Dollar Social Network',
                              :description => '',
                              :repository => '',
                              :client_id => 1)
    end

    it "should require a title" do
      @project.title = nil
      @project.save
      @project.should_not be_valid
    end

  end

  describe "with associations" do

    it "should belong to a client" do
      Project.reflect_on_association(:client).should_not be(nil)
    end

    it "should belong to a client officially" do
      @project = projects(:big_project)
      @project.client.should == clients(:microsoft)
    end

  end



end
