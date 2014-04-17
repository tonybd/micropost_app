require 'spec_helper'

describe "StaticPages" do
	describe "Home page" do
		it "should have the content 'Micropost App" do 
			visit '/static_pages/home'
			expect(page).to have_selector('h1', 'Micropost App')
		end

		it "should have the right title" do 
			visit '/static_pages/home' 
			expect(page).to have_title("Micropost App | Home")
		end 
	end

	describe "Help page" do
		it "should have the content 'Help'" do 
			visit '/static_pages/help' 
			expect(page).to have_selector('h1','Help')
		end

		it "should have the right title" do 
			visit '/static_pages/help' 
			expect(page).to have_title("Micropost App | Help")
		end  
	end

	describe "About page" do
		it "should have the content 'About'" do 
			visit '/static_pages/about'
			expect(page).to have_selector('h1','About')
		end

		it "should have the right title" do 
			visit '/static_pages/about' 
			expect(page).to have_title("Micropost App | About")
		end  
	end
end
