class WorkoutsController < ApplicationController
    before_action :find_workout, only: [:show, :edit, :update, :destroy, :create, :new, :index  ]

    def index
        if params[:user_id]
            user = User.find_by(id: params[:user_id])
            @workout = user.workout
        else
            @workouts = Workout.all

        end
    end

    def show

    end

    def new
        @workout = Workout.new(workout_params)
    end

    def create
        @workout = current_user.workouts.build(workout_params)
        if @workout.save
            redirect_to workouts_path
        else
            render :new
        end
    end
    def update
        if @workout.update(workout_params)
            redirect_to @workout
        else
            render 'edit'
        end
    end

    def edit
    end

    def destroy
        @workout.destroy
        redirect_to root_path
    end
 

    private

    def workout_params
        params.require(:workout).permit(:name, :kind, :duration, :date)
    end

    def find_workout
        @workout = Workout.find_by(params[:id])
    end



end
