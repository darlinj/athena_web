# frozen_string_literal: true

FactoryBot.define do
  factory :admin_user, class: :user do
    email 'fred.flintstone@bt.com'
    password 'password'
    admin true
  end
end
