class ExercisesController < ApplicationController


    def index
        if logged_in?
          @exercises = Exercise.all
        else
          redirect_to root_path
        end
      end


    def new
        @exercise = Exercise.new
    end

    def create
        @workout = Workout.find(params[:workout_id])
        @exercise = @workout.exercises.create(params[:workout].permit(:name, :target_area, :description))   
        if @exercise.save
            redirect_to workout_path(@workout)
        else
            render :new
        end
    end



    private

    def exercise_params
        params.require(:exercise).permit(:name, :target_area, :description)
    end




end