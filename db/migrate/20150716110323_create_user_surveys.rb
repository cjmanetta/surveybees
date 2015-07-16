class CreateUserSurveys < ActiveRecord::Migration
  def change
      create_table :user_surveys do |t|
        t.integer :taker_id
        t.integer :author_id
        t.references :survey_id, index: true
        t.timestamps
      end
  end
end
