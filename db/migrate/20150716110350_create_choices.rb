class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.references :question, index: true
      t.string :text
      t.timestamps
    end
  end
end
