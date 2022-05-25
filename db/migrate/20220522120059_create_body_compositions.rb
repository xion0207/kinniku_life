class CreateBodyCompositions < ActiveRecord::Migration[6.1]
  def change
    create_table :body_compositions do |t|
      t.float :body_weight
      t.float :body_fat_percentage
      t.string :date
      t.integer :user_id

      t.timestamps
    end
  end
end
