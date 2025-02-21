require "test_helper"

class InfluencerCampaignsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @influencer_campaign = influencer_campaigns(:one)
  end

  test "should get index" do
    get influencer_campaigns_url, as: :json
    assert_response :success
  end

  test "should create influencer_campaign" do
    assert_difference("InfluencerCampaign.count") do
      post influencer_campaigns_url, params: { influencer_campaign: { campaign_id: @influencer_campaign.campaign_id, custom_metrics: @influencer_campaign.custom_metrics, influencer_id: @influencer_campaign.influencer_id } }, as: :json
    end

    assert_response :created
  end

  test "should show influencer_campaign" do
    get influencer_campaign_url(@influencer_campaign), as: :json
    assert_response :success
  end

  test "should update influencer_campaign" do
    patch influencer_campaign_url(@influencer_campaign), params: { influencer_campaign: { campaign_id: @influencer_campaign.campaign_id, custom_metrics: @influencer_campaign.custom_metrics, influencer_id: @influencer_campaign.influencer_id } }, as: :json
    assert_response :success
  end

  test "should destroy influencer_campaign" do
    assert_difference("InfluencerCampaign.count", -1) do
      delete influencer_campaign_url(@influencer_campaign), as: :json
    end

    assert_response :no_content
  end
end
