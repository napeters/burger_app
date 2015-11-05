Rails.application.routes.draw do
  resources :users do
    resources :posts
  end

  root "feeds#index"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get  "/logout" => "sessions#destroy"
end
