FactoryGirl.define do
  factory :user do
    name     "Don Kennedy"
    email    "donkennedy@example.com"
    password "password"
    password_confirmation "password"
  end
end