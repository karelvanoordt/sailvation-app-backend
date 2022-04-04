# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'cruises/index'
      get 'cruises/show'
      get 'cruises/create'
      get 'cruises/update'
      get 'cruises/delete'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end