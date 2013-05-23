require 'spec_helper'

describe "StaticPages" do

	describe "Home page" do
		#it "should have the content 'Sample App'" do
		#	visit '/static_pages/home'
		#	page.should have_content('Sample App')
		#end
		it "should have the h1 'Sample App'" do
			visit '/home'
			page.should have_selector('h1', :text => 'Sample App')
		end

		it "should have the title" do
			visit '/home'
			page.should have_selector('title',:text => "Ruby on Rails Tutorial Sample App | Home")
		end

		#it "should not have a custom page title" do
		#	visit '/static_pages/home'
		#	page.should_not have_selector('title', :text => 'Ruby on Rails Tutorial Sample App | Home')
		#end
	end

	describe "Help page" do
		it "should have the h1 'Help Us'" do
			visit '/help'
			page.should have_selector('h1', :text => 'Help Us')
		end

		it "should have the title 'Help'" do
			visit '/help'
			page.should have_selector('title',:text => "Ruby on Rails Tutorial Sample App | Help")
		end
	end

	describe "About page" do
		it "should have the h1 'About Us'" do
			visit '/about'
			page.should have_selector('h1', :text => 'About Us')
		end

		it "should have the title 'About Us'" do
			visit '/about'
			page.should have_selector('title',:text => "Ruby on Rails Tutorial Sample App | About")
		end
	end

	describe "Contact page" do

		it "should have the h1 'Contact'" do
			visit '/contact'
			page.should have_selector('h1', text: 'Contact')
		end

		it "should have the title 'Contact'" do
			visit '/contact'
			page.should have_selector('title',
			                          text: "Ruby on Rails Tutorial Sample App | Contact")
		end
	end
end
