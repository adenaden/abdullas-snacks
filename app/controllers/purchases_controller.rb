class PurchasesController < ApplicationController

	def new
		@purchase = Purchase.new
	end

	def create
		twopound = params['£2'].to_f * 200
		onepound = params['£1'].to_f * 100
		fiftypence = params['£0.50'].to_f * 50
		twentypence = params['£0.20'].to_f * 20
		tenpence = params['£0.10'].to_f * 10
		fivepence = params['£0.05'].to_f * 5
		twopence = params['£0.02'].to_f * 2
		onepence = params['£0.01'].to_f * 1

		paid = [twopound, onepound, fiftypence, twentypence, tenpence, fivepence, twopence, onepence].sum
		puts paid/ 100 
		redirect_to(root_path, notice: "Your purchase was successful")
	end
end
