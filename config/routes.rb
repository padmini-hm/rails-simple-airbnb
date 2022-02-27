Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/flats", to: "flats#index"
  # get "/flats/new", to: "flats#new", as: :new_flat
  # get "/flats/:id", to: "flats#show", as: :flat
  # post "/flats", to: "flats#create"
  # get "/flats/:id/edit", to: "flats#edit", as: :edit_flat
  # patch "/flats/:id", to: "flats#update"
  # delete "/flats/:id", to: "flats#destroy"
  root to: "flats#index"
  resources :flats do
    collection do
      get :top
    end
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
end
