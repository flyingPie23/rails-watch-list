Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")


  root "lists#index"

  resources :lists do
    resources :movies, only: [:index] do
      resources :bookmarks, only: [:new]
    end
  end
end
