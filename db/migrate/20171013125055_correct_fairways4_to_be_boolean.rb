class CorrectFairways4ToBeBoolean < ActiveRecord::Migration
  def change
  	change_column :scores, :fairways_4, :boolean
  end
end
