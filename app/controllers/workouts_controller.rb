class WorkoutsController < ApplicationController


    def new
        @workout = Workout.new
    end

    def create
        @workout = current_user.workouts.build(workout_params)
        if @workout.save
            redirect_to workouts_path
        else
            render :new
        end
    end

    def index
        if params[:user_id]
            user = User.find_by(id: params[:user_id])
            @workout = user.workout
        else
            @workouts = Workout.all

        end
    end

    private

    def workout_params
        params.require(:workout).permit(:name, :kind, :times_per_week)
    end




end
