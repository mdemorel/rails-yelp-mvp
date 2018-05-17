Rails.application.routes.draw do

  # Add a new restaurant
  resources :restaurants do
    #resources :reviews, only: [ :new, :create ]
  end
end

