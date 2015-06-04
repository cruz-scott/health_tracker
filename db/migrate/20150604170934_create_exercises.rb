class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.references :exercise_type, index: true, foreign_key: true
      t.integer :calories_burned

      t.timestamps null: false
    end
  end
end
