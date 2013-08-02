require_relative '../spec_helper'

describe "User Authentication" do
  it "signup user" do
    visit '/users/sign_up'
    fill_in 'Email', with: 'millisami@gmail.com'
    fill_in 'Password', with: 'sekret'
    fill_in 'Password confirmation', with: 'sekret'
    click_button 'Sign up'
    expect(page).to have_content 'Welcome! You have signed up successfully'
  end
end
