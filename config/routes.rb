Rails.application.routes.draw do
  root "welcome#index"
  get "/auth/github", as: :github_login
  get "/auth/:provider/callback", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
  get "/dashboard", to: "dashboard#index"

  resources :groups, only: [:show] do
    resources :responses, only: [:new, :create]
  end
end
