class CreateGraphs < ActiveRecord::Migration[6.1]
  def change
    create_table :graphs do |t|
      t.string :date
      t.integer :user_id
      t.integer :body_composition_id
      t.integer :training_record_id

      t.timestamps
    end
  end
end
