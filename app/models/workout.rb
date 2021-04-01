class Workout < ApplicationRecord
  belongs_to :user
  has_many :workoutexercises
  has_many :exercises, through: :workoutexercises
end
