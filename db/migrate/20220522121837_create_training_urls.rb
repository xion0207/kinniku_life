class CreateTrainingUrls < ActiveRecord::Migration[6.1]
  def change
    create_table :training_urls do |t|
      t.string :url
      t.integer :muscle_part_id
      t.integer :user_id
      t.timestamps
    end
  end
end
