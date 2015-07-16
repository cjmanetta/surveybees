class CreateSurveys < ActiveRecord::Migration
  def change
      create_table :surveys do |t|
        t.string :name
        t.date :expiration
        t.timestamps
      end
  end
end
