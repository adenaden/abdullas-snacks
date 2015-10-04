require 'rails_helper'

feature "User visits homepage " do
	scenario "title of homepage is visible" do
		visit(root_path)

		expect(page).to have_content('Vending Machine')
	end
end