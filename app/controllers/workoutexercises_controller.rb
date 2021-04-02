class WorkoutExercisesController < ApplicationController
    def destroy
      @workout_exercise = WorkoutExercise.find_by(workout_id: params[:workout_id], exercise_id: params[:id])
      @workout_exercise.destroy
      redirect_to workout_path(current_user.workouts.find_by(id: params[:workout_id]))
    end
  
    private
    def exercise_params
      params.require(:exercise).permit(:id, :name, :exercise_type, :description, :workout_exercises_attributes => [:id, :workout_id, :sets, :reps])
    end
  
    def set_exercise
      @exercise = Exercise.find_by(id: params[:id])
    end
  
    def set_workout
      @workout = current_user.workouts.find_by(id: params[:workout_id])
    end
  end