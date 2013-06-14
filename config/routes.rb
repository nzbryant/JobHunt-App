JobHunt::Application.routes.draw do

  resources :jobs do
    collection do
      get :search
      get :results
      get :detail
    end
  end

  resources :users

  root :to => "site#index"

  get     "login", to: "users#login"
  post    "sessions/create"
  get     "sessions/destroy"

end
