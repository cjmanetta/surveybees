class CreateUserSurveys < ActiveRecord::Migration
  def change
      create_table :user_surveys do |t|
        t.integer :taker_id
        t.references :survey, index: true
        t.timestamps
      end
      # add_index :user_surveys, [:taker_id, :survey_id], unique: true
  end
end
