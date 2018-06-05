# frozen_string_literal: true

def mock_user_via_api
  stub_request(:get, 'www.example.com/users?user=fred@bt.com')
    .with(
      body: { data: { user_id: '123', user: 'fred@bt.com', company: 'MyCo' } }
    )
end

def login(user)
  visit('/')
  click_link('login')
  fill_in('Email', with: user.email)
  fill_in('Password', with: user.password)
  click_button('Log in')
end
