FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@gmail.com"}
    password "123456"
    password_confirmation "123456"

    factory :admin do
      admin true
    end
  end

  factory :score do
  	score_date "01/01/2014"
  	hc 12
  	score_1 70
  	putts_1 24
  	user
  end

end