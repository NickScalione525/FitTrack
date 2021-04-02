class WorkoutsController < ApplicationController


    def new
        @workout = Workout.new
    end

    def create
        @workout = Workout.new(workout_params)
        if @workout.save
            redirect_to @workout
        else
            render :new
        end
    end

    def index
        if params[:user_id]
            user = User.find_by(id: params[:user_id])
            @items = user.items
        else
            @workout = Workout.all






end
