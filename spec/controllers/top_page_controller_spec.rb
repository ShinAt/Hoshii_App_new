require 'rails_helper'

RSpec.describe TopPageController, type: :controller do

  render_views
  
  describe "GET home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
      assert_select "title", "Home | Hoshii!!"
    end
  end

end
