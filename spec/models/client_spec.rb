require File.dirname(__FILE__) + '/../spec_helper'

describe Client do
  before(:each) do
    @client = Client.new
  end

  it "should be valid" do
    @client.should be_valid
  end
end
