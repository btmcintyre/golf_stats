namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
   

    user1 = User.create!(name: "BM",
                 email: "bm@gmail.com",
                 password: "123456",
                 password_confirmation: "123456",
                 admin: true)  

=begin can' get this to work at thsi time
    user1.create_course!(name: "Castle Golf Club",
                        si_1:   9, par_1: 5,
                        si_2:   5, par_2: 4,
                        si_3:  17, par_3: 4,
                        si_4:  15, par_4: 3,
                        si_5:   7, par_5: 4,
                        si_6:   1, par_6: 4,
                        si_7:  13, par_7: 4,
                        si_8:  11, par_8: 3,
                        si_9:   3, par_9: 4,
                        si_10: 16, par_10: 3,
                        si_11:  8, par_11: 4,
                        si_12: 12, par_12: 4,
                        si_13: 18, par_13: 3,
                        si_14:  2, par_14: 4,
                        si_15: 14, par_15: 3,
                        si_16:  6, par_16: 5,
                        si_17: 10, par_17: 5,
                        si_18:  4, par_18: 4)
=end

    5.times do |n|
      name  = Faker::Name.name
      email = "ex-#{n+1}@bm.org"
      password  = "123456"
      user_n = User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end   

    users = User.all(limit: 6)
    3.times do
      score_date = Time.at(0.0 + rand * (Time.now.to_f - 0.0.to_f)).to_date
      users.each { |user| user.scores.create!(score_date: score_date, hc: 12, 
                                    score_1:  Random.new.rand(3..6), putts_1:  Random.new.rand(1..3), fairways_1:  rand(2) == 1, greens_1:  rand(2) == 1,
                                    score_2:  Random.new.rand(3..6), putts_2:  Random.new.rand(1..3), fairways_2:  rand(2) == 1, greens_2:  rand(2) == 1,
                                    score_3:  Random.new.rand(3..6), putts_3:  Random.new.rand(1..3), fairways_3:  rand(2) == 1, greens_3:  rand(2) == 1,
                                    score_4:  Random.new.rand(3..6), putts_4:  Random.new.rand(1..3), fairways_4:  rand(2) == 1, greens_4:  rand(2) == 1,
                                    score_5:  Random.new.rand(3..6), putts_5:  Random.new.rand(1..3), fairways_5:  rand(2) == 1, greens_5:  rand(2) == 1,
                                    score_6:  Random.new.rand(3..6), putts_6:  Random.new.rand(1..3), fairways_6:  rand(2) == 1, greens_6:  rand(2) == 1,
                                    score_7:  Random.new.rand(3..6), putts_7:  Random.new.rand(1..3), fairways_7:  rand(2) == 1, greens_7:  rand(2) == 1,
                                    score_8:  Random.new.rand(3..6), putts_8:  Random.new.rand(1..3), fairways_8:  rand(2) == 1, greens_8:  rand(2) == 1,
                                    score_9:  Random.new.rand(3..6), putts_9:  Random.new.rand(1..3), fairways_9:  rand(2) == 1, greens_9:  rand(2) == 1,
                                    score_10: Random.new.rand(3..6), putts_10: Random.new.rand(1..3), fairways_10: rand(2) == 1, greens_10: rand(2) == 1,
                                    score_11: Random.new.rand(3..6), putts_11: Random.new.rand(1..3), fairways_11: rand(2) == 1, greens_11: rand(2) == 1,
                                    score_12: Random.new.rand(3..6), putts_12: Random.new.rand(1..3), fairways_12: rand(2) == 1, greens_12: rand(2) == 1,
                                    score_13: Random.new.rand(3..6), putts_13: Random.new.rand(1..3), fairways_13: rand(2) == 1, greens_13: rand(2) == 1,
                                    score_14: Random.new.rand(3..6), putts_14: Random.new.rand(1..3), fairways_14: rand(2) == 1, greens_14: rand(2) == 1,
                                    score_15: Random.new.rand(3..6), putts_15: Random.new.rand(1..3), fairways_15: rand(2) == 1, greens_15: rand(2) == 1,
                                    score_16: Random.new.rand(3..6), putts_16: Random.new.rand(1..3), fairways_16: rand(2) == 1, greens_16: rand(2) == 1,
                                    score_17: Random.new.rand(3..6), putts_17: Random.new.rand(1..3), fairways_17: rand(2) == 1, greens_17: rand(2) == 1,
                                    score_18: Random.new.rand(3..6), putts_18: Random.new.rand(1..3), fairways_18: rand(2) == 1, greens_18: rand(2) == 1
                                    ) }
    end
  end
end