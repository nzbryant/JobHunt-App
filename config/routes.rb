JobHunt::Application.routes.draw do

  resources :jobs

  resources :users

  root :to => "users#new"

end
