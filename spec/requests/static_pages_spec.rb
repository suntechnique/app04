require 'spec_helper'

describe "StaticPages" do
	subject { page }

	describe "Home page" do
		before { visit home_path }
		#it "should have the content 'Sample App'" do
		#	visit '/static_pages/home'
		#	page.should have_content('Sample App')
		#end

		it { should have_selector('h1', :text => 'Sample App') }
		#it "should have the h1 'Sample App'" do
		#	page.should have_selector('h1', :text => 'Sample App')
		#end

		it { should have_selector('title',:text => full_title("Home")) }
		#it "should have the title" do
		#	page.should have_selector('title',:text => "Ruby on Rails Tutorial Sample App | Home")
		#end

		#it "should not have a custom page title" do
		#	visit '/static_pages/home'
		#	page.should_not have_selector('title', :text => 'Ruby on Rails Tutorial Sample App | Home')
		#end
	end

	describe "Help page" do
		before { visit help_path }
		it { should have_selector('h1', :text => 'Help Us') }
		it { should have_selector('title',:text => full_title("Help")) }
	end

	describe "About page" do
		before { visit about_path }
		it { should have_selector('h1', :text => 'About Us') }
		it { should have_selector('title',:text => full_title("About")) }
	end

	describe "Contact page" do
		before { visit contact_path }
		it { should have_selector('h1', text: 'Contact') }
		it { should have_selector('title',text: full_title("Contact")) }
	end

	describe "signup page" do
		before { visit signup_path }
		it { should have_selector('h1',    text: 'Sign up') }
		it { should have_selector('title', text: full_title('Sign up')) }
	end
end
