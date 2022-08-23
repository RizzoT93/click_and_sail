Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :boats, only: [:index]

  get "boats/:id", to: "boats#show", as: :boat


  # Defines the root path route ("/")
  # root "articles#index"
  resources :boats, only: [:create, :new]
end
