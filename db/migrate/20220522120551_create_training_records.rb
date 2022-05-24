class CreateTrainingRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :training_records do |t|
      t.string :training_event
      t.string :training_note

      t.timestamps
    end
  end
end
