class ItemsController < ApplicationController
	#this before will allow you to pull up the barcode scanner, but before you can actually see the item (and possibly bid), you must log in
	before_filter :authorize

	#this serves the purpose of the bid#new route as well, shows item details and button to bid
	def show
	end

end