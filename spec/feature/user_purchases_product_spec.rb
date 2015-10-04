require "rails_helper"

feature "User purchases an item" do
	scenario "with right amount of money" do
		visit  new_purchase_path
		select('1', :from => '£1') 
		select('1', :from => '£0.50')

		click_button("Pay")

		expect(page).to have_content("Your purchase was successful")
	end

		xscenario "with incorrect amount of money" do
		visit  new_purchase_path
		select('1', :from => '£1') 
		select('1', :from => '£0.50')

		click_button("Pay")

		expect(page).to have_content("Unsufficient amount, please pay more! its simples")
	end
end