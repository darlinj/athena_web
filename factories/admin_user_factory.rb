# frozen_string_literal: true

FactoryBot.define do
  factory :admin_user, class: :user do
    email Faker::Internet.email
    password Faker::Internet.password
    company
    admin true
  end
end
