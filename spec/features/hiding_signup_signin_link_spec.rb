require "rails_helper"

RSpec.feature "Hiding signin link" do
  before do
    @john = User.create!(email: "john@example.com", password: "password")
  end

  scenario "upon successful sign in" do
    visit "/"

    click_link "Sign In"
    fill_in "Email", with: @john.email
    fill_in "Password", with: @john.password
    click_button "Log in"

    expect(page).to have_link("Sign Out")
    expect(page).not_to have_link("Sign In")
    expect(page).not_to have_link("Sign up")
  end
end