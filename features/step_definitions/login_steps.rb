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
  expect(page).to have_content('logged in')
end

Then('I am associated with my company') do
  pending # Write code here that turns the phrase above into concrete actions
end

Given('I am an admin user') do
  admin_user = create :admin_user
  login admin_user
end

When('I create a normal user') do
  visit '/user/new'
  fill_in('Email', with: 'barney@example.com')
  fill_in('Company', with: 'Acme corp')
  select('Normal user', from: 'User type')
  click_button('Create')
end

Then('I should see that normal user has been created') do
  expect(page).to have_content('User has been created')
end

Given('there is an admin user') do
  create :admin_user
end

When('a user is created by an admin') do
  visit '/user/new'
  fill_in('Email', with: 'barney@example.com')
  fill_in('Company', with: 'Acme corp')
  select('Normal user', from: 'User type')
  click_button('Create')
end

Then('the user should get a notification') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('the user should be able to confirm') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('the user should be able to login') do
  pending # Write code here that turns the phrase above into concrete actions
end
