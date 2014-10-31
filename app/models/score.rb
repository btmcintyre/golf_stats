class Score < ActiveRecord::Base
	belongs_to :user
	default_scope -> { order('score_date DESC') }
	validates :user_id, presence: true
	validates :score_date, presence: true
end
