Rails.application.routes.draw do
  root to: 'toppages#index'

#   newアクションのURLを変更するために以下を記述
  get 'signup', to: 'users#new'
  
  resources :users, only: [:index, :show, :new, :create]
end