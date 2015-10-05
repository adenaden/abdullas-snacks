require 'rails_helper'


feature "User create new Product" do 
	scenario "with correct details" do 
		visit new_product_path
		fill_in("product[name]", :with => "Kitkat")
		fill_in("product[price]", :with => "1.20")
		
		click_button('Create')

		expect(page).to have_content("Product has been created!")

	end
end