require "rails_helper"

RSpec.describe "Users signup" do
  scenario "with valid credentials" do
    visit "/"
    click_link "signup"
    fill_in "Email", with: "john@example.com"
    fill_in "Password", with: "password"
    fill_in "Password Confirmation", with: "password"
    click_button "Sign Up"

    expect(page).to have_content("You have signed up successfully.")
  end
end