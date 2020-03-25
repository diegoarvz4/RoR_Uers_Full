Rails.application.routes.draw do
  post '/signup', to: 'users#create'
  get '/users', to: 'users#index'
end
