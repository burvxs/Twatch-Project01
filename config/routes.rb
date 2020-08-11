Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#welcome"
  get '/home' => "pages#home"

    # Session routes
  get '/login' => "session#new" #login form
  # form submits here, do authentication,
  # redirect or show form with errors
  post '/login' => "session#create" 

  resources :users
  resources :streams
  resources :comments
end
