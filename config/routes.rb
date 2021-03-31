Rails.application.routes.draw do
  resources :workoutexercises
  resources :exercises
  resources :users
  resources :workouts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
