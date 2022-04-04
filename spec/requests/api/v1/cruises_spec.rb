require 'rails_helper'

RSpec.describe "Api::V1::Cruises", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/api/v1/cruises/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/api/v1/cruises/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/api/v1/cruises/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/api/v1/cruises/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /delete" do
    it "returns http success" do
      get "/api/v1/cruises/delete"
      expect(response).to have_http_status(:success)
    end
  end

end
