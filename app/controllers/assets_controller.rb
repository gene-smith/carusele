class AssetsController < ApplicationController
	def create
		@campaign = Campaign.find(params[:campaign_id])
		@asset = @campaign.assets.create(asset_params)
		redirect_to campaigns_path(@campaign)
	end

	private
		def asset_params
			params.require(:asset).permit(:campaign_name, :type, :url)
		end
end
