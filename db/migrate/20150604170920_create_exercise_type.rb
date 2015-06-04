class CreateExerciseType < ActiveRecord::Migration
  def change
    create_table :exercise_types do |t|
      t.string :name
    end
  end
end
