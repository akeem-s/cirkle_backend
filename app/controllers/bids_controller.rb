class BidsController < ApplicationController
	#again, authorize login before allowing them to place bids
	before_filter :authorize
	#bids index also only available for admin to see macro data
	def index
	end

###################################################################################

	#show the result of a bid - conditional for win or lose based on RNG
	def show
	end
	
	#no bid#new route since that page is covered by the item - show page, which redirects to bid#create

	#create route redirects to the show page which has the result
	def create
	end

end