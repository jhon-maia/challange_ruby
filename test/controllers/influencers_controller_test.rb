require "test_helper"

class InfluencersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @influencer = influencers(:one)
  end

  test "should get index" do
    get influencers_url, as: :json
    assert_response :success
  end

  test "should create influencer" do
    assert_difference("Influencer.count") do
      post influencers_url, params: { influencer: { email: @influencer.email, followers: @influencer.followers, name: @influencer.name, platform: @influencer.platform, username: @influencer.username } }, as: :json
    end

    assert_response :created
  end

  test "should show influencer" do
    get influencer_url(@influencer), as: :json
    assert_response :success
  end

  test "should update influencer" do
    patch influencer_url(@influencer), params: { influencer: { email: @influencer.email, followers: @influencer.followers, name: @influencer.name, platform: @influencer.platform, username: @influencer.username } }, as: :json
    assert_response :success
  end

  test "should destroy influencer" do
    assert_difference("Influencer.count", -1) do
      delete influencer_url(@influencer), as: :json
    end

    assert_response :no_content
  end
end
