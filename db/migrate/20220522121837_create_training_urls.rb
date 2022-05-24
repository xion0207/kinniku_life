class CreateTrainingUrls < ActiveRecord::Migration[6.1]
  def change
    create_table :training_urls do |t|
      t.string :training_url
      t.timestamps
    end
  end
end
