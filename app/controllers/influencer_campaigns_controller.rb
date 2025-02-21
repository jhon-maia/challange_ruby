class InfluencerCampaignsController < ApplicationController
  before_action :set_influencer_campaign, only: %i[ show update destroy ]

  # GET /influencer_campaigns
  def index
    @influencer_campaigns = InfluencerCampaign.all

    render json: @influencer_campaigns
  end

  # GET /influencer_campaigns/1
  def show
    render json: @influencer_campaign
  end

  # POST /influencer_campaigns
  def create
    @influencer_campaign = InfluencerCampaign.new(influencer_campaign_params)

    if @influencer_campaign.save
      render json: @influencer_campaign, status: :created, location: @influencer_campaign
    else
      render json: @influencer_campaign.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /influencer_campaigns/1
  def update
    if @influencer_campaign.update(influencer_campaign_params)
      render json: @influencer_campaign
    else
      render json: @influencer_campaign.errors, status: :unprocessable_entity
    end
  end

  # DELETE /influencer_campaigns/1
  def destroy
    @influencer_campaign.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_influencer_campaign
      @influencer_campaign = InfluencerCampaign.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def influencer_campaign_params
      params.require(:influencer_campaign).permit(:influencer_id, :campaign_id, :custom_metrics)
    end
end
