class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
    	t.string :name
      t.references :user, index: true
      t.integer :si_1
      t.integer :par_1
      t.integer :si_2
      t.integer :par_2
      t.integer :si_3
      t.integer :par_3
      t.integer :si_4
      t.integer :par_4
      t.integer :si_5
      t.integer :par_5
      t.integer :si_6
      t.integer :par_6
      t.integer :si_7
      t.integer :par_7
      t.integer :si_8
      t.integer :par_8
      t.integer :si_9
      t.integer :par_9
      t.integer :si_10
      t.integer :par_10
      t.integer :si_11
      t.integer :par_11
      t.integer :si_12
      t.integer :par_12
      t.integer :si_13
      t.integer :par_13
      t.integer :si_14
      t.integer :par_14
      t.integer :si_15
      t.integer :par_15
      t.integer :si_16
      t.integer :par_16
      t.integer :si_17
      t.integer :par_17
      t.integer :si_18
      t.integer :par_18
      t.timestamps
    end
  end
end
