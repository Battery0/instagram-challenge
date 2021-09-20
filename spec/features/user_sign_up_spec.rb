require 'rails_helper'

feature 'user sign up' do
  scenario 'a user can sign up to instagram' do
    visit('/')
    fill_in('First name', with: 'Dave')
    fill_in('Last name', with: 'sdvsdv')
    fill_in('Email', with: 'email@email.com')
    fill_in('Password', with: 'Password999')
    click_button('Sign Up!')
    expect(page).to have_content('Dave, you have successfully signed up!') #hard coded
  end
end