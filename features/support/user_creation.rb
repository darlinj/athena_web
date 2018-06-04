def mock_user_via_API
  stub_request(:get, "www.example.com/users?user=fred@bt.com").
    with(body: {data: {user_id: '123', user: 'fred@bt.com', company: 'MyCo'}})
end
