# frozen_string_literal: true

Given('I am an Athena web user') do
  create :user, email: 'fred@bt.com', password: 'secret'
  mock_user_via_api
end

When('I log in') do
  visit('/')
  click_link('login')
  fill_in('Email', with: 'fred@bt.com')
  fill_in('Password', with: 'secret')
  click_button('Log in')
end

Then('I am successfully logged in') do
  expect(page).to have_content('logout')
end

Then('I am associated with my company') do
  pending # Write code here that turns the phrase above into concrete actions
end

Given('I am an admin user') do
  admin_user = create :admin_user
  login admin_user
end

When("I invite a new user to use the website") do
  clear_emails
  visit('/')
  click_link('Invite someone')
  fill_in('Email', with: 'bod.roundyperson@example.com')
  click_button('Send an invitation')
end

Then("the new user should get an email invitation") do
  open_email('bod.roundyperson@example.com')
  expect(current_email).to have_content('Hello bod.roundyperson@example.com')
end

Then("should be able to set their password") do
  current_email.click_link('Accept invitation')
  fill_in('Password', with: 'secret')
  fill_in('Password confirmation', with: 'secret')
  click_button('Set my password')
end

Then("should be logged in") do
  expect(page).to have_content('logout')
end

