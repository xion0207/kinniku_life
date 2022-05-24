class CreateBodyCompositions < ActiveRecord::Migration[6.1]
  def change
    create_table :body_compositions do |t|
      t.string :body_weight
      t.string :body_fat_percentage
      t.string :date

      t.timestamps
    end
  end
end
