FactoryBot.define do
  factory :user do
    email {Faker::Internet.free_email}
    password = Faker::Internet.password
    password {password}
    password_confirmation {password}
  end
end