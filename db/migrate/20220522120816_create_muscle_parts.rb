class CreateMuscleParts < ActiveRecord::Migration[6.1]
  def change
    create_table :muscle_parts do |t|
      t.string :muscle_part_name
    end
  end
end
