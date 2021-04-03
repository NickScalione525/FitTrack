class ExercisesController < ApplicationController
    before_action :set_exercise, only: [:show, :edit, :update, :destroy]
    before_action :set_workout, only: [:show, :edit, :update]
    before_action :set_workout_exercise, only: [:show, :edit, :update]


    def create
      @workout = Workout.find(params[:workout_id])
      @exercise = @workout.exercises.create(params[:workout].permit(:name, :target_area, :description))

      redirect_to workout_path(@workout)
    end

      def new
        @exercise = Exercise.new
    end
  end