Rails.application.routes.draw do
root 'sessions#home'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  delete '/logout' => 'sessions#destroy'
  

  resources :workoutexercises
  resources :exercises
  resources :users do
    resources :workouts, only: [:new, :create, :index]
  end
  resources :workouts
  resources :sessions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
