class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :user_id
      t.date :score_date
      t.integer :hc
      t.integer :score_1
      t.integer :fairways_1
      t.integer :greens_1
      t.integer :putts_1
      t.integer :score_2
      t.integer :fairways_2
      t.integer :greens_2
      t.integer :putts_2
      t.integer :score_3
      t.integer :fairways_3
      t.integer :greens_3
      t.integer :putts_3
      t.integer :score_4
      t.integer :fairways_4
      t.integer :greens_4
      t.integer :putts_4
      t.integer :score_5
      t.integer :fairways_5
      t.integer :greens_5
      t.integer :putts_5
      t.integer :score_6
      t.integer :fairways_6
      t.integer :greens_6
      t.integer :putts_6
      t.integer :score_7
      t.integer :fairways_7
      t.integer :greens_7
      t.integer :putts_7
      t.integer :score_8
      t.integer :fairways_8
      t.integer :greens_8
      t.integer :putts_8
      t.integer :score_9
      t.integer :fairways_9
      t.integer :greens_9
      t.integer :putts_9
      t.integer :score_10
      t.integer :fairways_10
      t.integer :greens_10
      t.integer :putts_10
      t.integer :score_11
      t.integer :fairways_11
      t.integer :greens_11
      t.integer :putts_11
      t.integer :score_12
      t.integer :fairways_12
      t.integer :greens_12
      t.integer :putts_12
      t.integer :score_13
      t.integer :fairways_13
      t.integer :greens_13
      t.integer :putts_13
      t.integer :score_14
      t.integer :fairways_14
      t.integer :greens_14
      t.integer :putts_14
      t.integer :score_15
      t.integer :fairways_15
      t.integer :greens_15
      t.integer :putts_15
      t.integer :score_16
      t.integer :fairways_16
      t.integer :greens_16
      t.integer :putts_16
      t.integer :score_17
      t.integer :fairways_17
      t.integer :greens_17
      t.integer :putts_17
      t.integer :score_18
      t.integer :fairways_18
      t.integer :greens_18
      t.integer :putts_18

      t.timestamps
    end
    add_index :scores, :user_id
  end
end
