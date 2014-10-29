namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "BM",
                 email: "bm@gmail.com",
                 password: "123456",
                 password_confirmation: "123456",
                 admin: true)
    9.times do |n|
      name  = Faker::Name.name
      email = "ex-#{n+1}@bm.org"
      password  = "123456"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end

    users = User.all(limit: 6)
    3.times do
      score_date = Time.at(0.0 + rand * (Time.now.to_f - 0.0.to_f)).to_date
      users.each { |user| user.scores.create!(score_date: score_date) }
    end
  end
end