class CreateWorkoutexercises < ActiveRecord::Migration[6.1]
  def change
    create_table :workoutexercises do |t|
      t.integer :sets
      t.integer :reps
      t.integer :workout_id
      t.integer :exercise_id

      t.timestamps
    end
  end
end
