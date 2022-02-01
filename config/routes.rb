Rails.application.routes.draw do
  root "sessions#new"

  resources :users, controller: "registrations", only: [:new, :create] do
    resources :articles do
      resources :comments
    end
  end

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
