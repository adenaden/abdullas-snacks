class PurchasesController < ApplicationController

	def new
		@purchase = Purchase.new
		@product = Product.find(params[:product])
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
		paid = ([twopound, onepound, fiftypence, twentypence, tenpence, fivepence, twopence, onepence].sum) / 100 


		puts paid
		product = Product.find(params[:product_id])

		if paid >= product.price
			change = paid - product.price
			Purchase.create('product' => product.name, 'paid' => paid, 'change' => change)
			product.update('quantity' => (product.quantity - 1))	
			redirect_to(root_path, notice: "Your purchase was successful! and your change is #{change}0p")
		else
			redirect_to(new_purchase_path(product: product.id), notice: "Insuficient funds matey!")

		end 


	end
end
