require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'R4$Technologies'" do
      visit '/static_pages/home'
      expect(page).to have_content('R4$Technologies')
    end
    it "should have title 'Home'" do
    	visit '/static_pages/home'
    	expect(page).to have_title("R4$Technologies | Home")
    end
  end

  describe "Account page" do
    it "should have the content 'Create Account'" do
      visit '/static_pages/account'
      expect(page).to have_content('Create Account')
    end
    it "should have title'Account'" do
     	visit '/static_pages/account'
     	expect(page).to have_title("R4$Technologies | Account")
     end
  end

  describe "About page" do
    it "should have the content 'About Us" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    it "should have title 'About'" do
     	visit '/static_pages/about'
     	expect(page).to have_title("R4$Technologies | About")
     end
  end

  describe "Contact page" do
    it "should have the content 'Contact Us" do
      visit '/static_pages/contactus'
      expect(page).to have_content('Contact Us')
    end
    it "should have title 'Contact'" do
     	visit '/static_pages/contactus'
     	expect(page).to have_title("R4$Technologies | Contact")
     end
  end

   describe "Login page" do
    it "should have the content 'Login" do
      visit '/static_pages/login'
      expect(page).to have_content('Login')
    end
     it "should have title'Login'" do
     	visit '/static_pages/login'
     	expect(page).to have_title("R4$Technologies | Login")
     end
  end

  describe "ShoppingCart page" do
    it "should have the content 'Your Cart'" do
      visit '/static_pages/shoppingCart'
      expect(page).to have_content('Your Cart')
    end
    it "should have title'ShoppingCart'" do
     	visit '/static_pages/shoppingCart'
     	expect(page).to have_title("R4$Technologies | ShoppingCart")
     end
  end

end
