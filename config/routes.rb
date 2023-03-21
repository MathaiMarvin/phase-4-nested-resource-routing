Rails.application.routes.draw do
  resources :dog_houses, only: [:show] do

  # A nested resource for reviews
    resources :reviews, only: [:show, :index]
  end
  resources :reviews, only: [:show, :index, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



  # get '/dog_houses/:dog_house_id/reviews' to: 'dog_houses#reviews_index'
  # get '/dog_houses/:dog_house_id/reviews/:review_id' to:'dog_houses#review'

  # Nested Resource Routes
  # They give us a way to document that parent/child relationship in our routes and ultimately the urls
end
