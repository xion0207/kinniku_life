class CreateTrainingEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :training_events do |t|
      t.string "name"
      t.integer "muscle_part_id"
      t.integer "user_id"
      t.timestamps
    end
  end
end
