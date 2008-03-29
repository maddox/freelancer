require File.dirname(__FILE__) + '/../spec_helper'

describe Client do

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


end
