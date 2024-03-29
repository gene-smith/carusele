class CampaignsController < ApplicationController

	def index
		@campaign = Campaign.all
	end

	def show
		@campaign = Campaign.find(params[:id])
	end

	def new
		@campaign = Campaign.new
	end

	def edit
		@campaign = Campaign.find(params[:id])
	end

	def create
		@campaign = Campaign.new(campaign_params)

		if @campaign.save
			redirect_to @campaign
		else
			render 'new'
		end
	end

	def update
		@campaign = Campaign.find(params[:id])

		if @campaign.update(campaign_params)
			redirect_to @campaign
		else
			render 'edit'
		end
	end

	def destroy
		@campaign = Campaign.find(params[:id])
		@campaign.destroy

		redirect_to campaigns_path
	end


	private
  		def campaign_params
    		params.require(:campaign).permit(:title, :text)
  		end
end
