Rails.application.routes.draw do
  
  get 'auth/:provider/callback', to: 'connections#create'
  resources :connections, only: [:destroy]
  
  get 'auth/failure', to: 'connections#omniauth_failure'
  
  devise_for :users, controllers: {registrations: 'registrations'}
  root 'pages#home' 
  get 'dashboard', to: 'pages#dashboard' 

end
