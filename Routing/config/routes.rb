Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# resources :users

get 'users/new', to: 'users#new', as: 'new_user'
get "/users", to: "users#index"
get "/users/:id", to: "users#show"
post "/users", to: "users#create"
patch "/posts/:id", to: "posts#update"
put "/posts/:id", to: "posts#update"
delete "/posts/:id", to: "posts#destroy"


end
