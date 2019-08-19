Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :show]
      post '/login', to: 'auth#create'
      get '/validate', to: 'auth#validate_token'
      mount ActionCable.server => '/cable'
    end
  end
end
