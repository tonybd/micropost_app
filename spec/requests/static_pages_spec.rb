require 'spec_helper'

describe "StaticPages" do
	subject { page }

	describe "Home page" do
		before { visit root_path }

		it { should have_title(full_title('')) }
		it { should_not have_title('| Home') }
		it { should have_selector('h1','Micropost App') }

		describe "for signed-in users" do
      		let(:user) { FactoryGirl.create(:user) }
      		before do
        		FactoryGirl.create(:micropost, user: user, content: "Lorem")
        		FactoryGirl.create(:micropost, user: user, content: "Ipsum")
        		sign_in user
        		visit root_path
      		end

      		it "should render the user's feed" do
        		user.feed.each do |item|
          			expect(page).to have_selector("li##{item.id}", text: item.content)
        		end
      		end
      	end
	end

	describe "Help page" do
		before { visit help_path }

		it { should have_title(full_title('Help')) }
		it { should have_selector('h1', 'Help') }
	end

	describe "About page" do
		before { visit about_path }

		it { should have_title(full_title('About')) }
		it { should have_selector('h1', 'About') }
	end

	describe "Contact page" do
		before { visit contact_path }

		it { should have_title(full_title('Contact')) }
		it { should have_selector('h1', 'Contact') }
	end
end