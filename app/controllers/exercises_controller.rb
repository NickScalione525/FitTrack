class ExercisesController < ApplicationController
    def new
        @exercise = Exercise.new
    end

    def create
        @exercise = Exercise.new(exercise_params)
        if @exercise.save
            redirect_to exercises_path
        else
            render :new
        end
    end

    def index
        if params[:user_id]
            user = User.find_by(id: params[:user_id])
            @exercise = user.exercise
        else
            @exercises = Exercise.all

        end
    end

    private

    def exercise_params
        params.require(:exercise).permit(:name, :kind, :times_per_week)
    end




end