# frozen_string_literal: true

Given("I am an Athena web user") do
  create :user, email: 'fred@bt.com', password: 'secret'
  mock_user_via_API
end

When("I log in") do
  visit('/')
  click_link('login')
  fill_in('Email', with: "fred@bt.com")
  fill_in('Password', with: "secret")
  click_button('Log in')
end

Then("I am successfully logged in") do
  expect(page).to have_content("logged in")
end

Then("I am associated with my company") do
  pending # Write code here that turns the phrase above into concrete actions
end
