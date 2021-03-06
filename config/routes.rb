Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  
  resources :topics
  resources :user_chats
  resources :messages
  resources :chats
  
  get "users/whoami", to: "users#whoami"
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
