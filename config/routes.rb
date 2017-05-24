Rails.application.routes.draw do
  
  get 'auth/:provider/callback', to: 'connections#create'
  resources :connections, only: [:destroy]

  devise_for :users, controllers: {registrations: 'registrations'}
  root 'pages#home' 
  get 'dashboard', to: 'pages#dashboard' 

end
