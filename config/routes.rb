JobHunt::Application.routes.draw do

  resources :jobs do
    collection do
      get :search
      get :results
      get :detail
    end
  end

  resources :users

  root :to => "users#new"

end
