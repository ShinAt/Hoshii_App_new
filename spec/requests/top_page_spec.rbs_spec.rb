require 'rails_helper'

RSpec.describe "TopPageSpec.rbs", type: :request do
  let(:base_title) { "Hoshii!!"}

  describe "homeをGETで取得した場合" do
    it "成功レスポンスが返ってくること" do
      get '/top_page/home'
      expect(response).to have_http_status(:success)
      assert_select "title", "Home | #{base_title}"
    end
  end

  describe "rootをGETで取得した場合"do
    it "成功レスポンスが返ってくること" do
      get '/'
      expect(response).to have_http_status(:success)
      assert_select "title", "Home | #{base_title}"
    end
  end
end
