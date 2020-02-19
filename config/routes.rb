Rails.application.routes.draw do
  root to: 'restaurants#index'

  namespace :admin do
    resources :restaurants, only: [:index, :edit, :update, :destroy, :review]
  end

  resources :restaurants, only: [:index, :new, :create, :show] do
    # Two nested routes for reviews
    #
    # GET /restaurants/:restaurant_id/reviews/new
    # POST /restaurants/:restaurant_id/reviews
    resources :reviews, only: [:new, :create]

    # GET /restaurants/:restaurant_id/reviews/:id WRONG!!!!!
    # GET /reviews/:id
  end

  # resources :users do
  #   ....
  # end
end
