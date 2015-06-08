class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.integer :exercise_type_id, index: true, foreign_key: true
      t.integer :calories_burned

      t.timestamps null: false
    end
  end
end
