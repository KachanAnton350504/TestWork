require 'spec_helper'

describe OrdersController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'information'" do
    it "returns http success" do
      get 'information'
      response.should be_success
    end
  end

  describe "GET 'accept'" do
    it "returns http success" do
      get 'accept'
      response.should be_success
    end
  end

end
