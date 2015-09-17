require 'rails_helper'

RSpec.describe "Stickers", type: :request do
  describe "GET /stickers" do
    it "works! (now write some real specs)" do
      get stickers_path
      expect(response).to have_http_status(200)
    end
  end
end
