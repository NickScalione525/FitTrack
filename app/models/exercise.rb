class Exercise < ApplicationRecord
    has_many :workoutexercises
    has_many :workouts, through: :workoutexercises
end
