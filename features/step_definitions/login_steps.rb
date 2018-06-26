# frozen_string_literal: true

Given('I am an Athena web user') do
  @current_user = create :user
  mock_user_via_api
end

When('I log in') do
  visit('/')
  click_link('login')
  fill_in('Email', with: @current_user.email)
  fill_in('Password', with: @current_user.password)
  click_button('Log in')
end

Then('I am successfully logged in') do
  expect(page).to have_content('logout')
end

Then('I am associated with my company') do
  expect(page).to have_content(@current_user.company.name)
end

Given('I am an admin user') do
  admin_user = create :admin_user
  login admin_user
  @current_company = create :company
end

When('I invite a new user to use the website') do
  clear_emails
  visit('/')
  click_link('Invite someone')
  fill_in('Email', with: 'bod.roundyperson@example.com')
  select(@current_company.name, from: 'Company')
  click_button('Send an invitation')
end

Then('the new user should get an email invitation') do
  open_email('bod.roundyperson@example.com')
  expect(current_email).to have_content('Hello bod.roundyperson@example.com')
end

Then('should be able to set their password') do
  current_email.click_link('Accept invitation')
  fill_in('Password', with: 'secret')
  fill_in('Password confirmation', with: 'secret')
  click_button('Set my password')
end

Then('should be logged in') do
  expect(page).to have_content('logout')
end
