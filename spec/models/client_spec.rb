require File.dirname(__FILE__) + '/../spec_helper'

describe Client do
  fixtures :clients, :projects

  describe "without proper attributes" do

    before(:each) do
      @client = Client.new(:name => 'Happy Company')
    end

    it "should require a name" do
      @client.name = nil
      @client.save
      @client.should_not be_valid
    end

  end

  describe "with associations" do

    it "should have many projects" do
      Client.reflect_on_association(:projects).should_not be(nil)
    end

    it "should have many projects officially" do
      @client = clients(:microsoft)
      @client.projects.size.should == 2
    end

  end


end
