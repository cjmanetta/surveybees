class CreateSurveys < ActiveRecord::Migration
  def change
      create_table :surveys do |t|
        t.string :name
        # t.references :user_id, as: :author_id
        t.integer :author_id
        t.date :expiration
        t.timestamps
      end
  end
end
