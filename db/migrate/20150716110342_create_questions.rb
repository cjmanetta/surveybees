class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :survey_id, index: true
      t.string :text
      t.timestamps
    end
  end
end
