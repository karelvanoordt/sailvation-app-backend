# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users do
    resources :cruises, only: %i[index show create destroy]
    resources :reservations, only: %i[index show create destroy]
  end
end
