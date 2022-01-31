Rails.application.routes.draw do
  root "articles#index"

  resources :articles do
    member do 
      get "preview"
    end
    resources :comments
  end

  get "/test", to: "test#example"
  get "/search", to: "test#search"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
