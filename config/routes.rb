Rails.application.routes.draw do
  
  #only allow admin user to view jobs path
  authenticated :user, -> user { user.admin? } do 
    #created from adding delayed-web gem
    mount Delayed::Web::Engine, at: '/jobs'
  end

  #allow user to cancel post
  resources :posts do 
    member do 
      put :cancel 
    end
  end  
  
  get 'auth/:provider/callback', to: 'connections#create'
  resources :connections, only: [:destroy]
  resources :posts
  
  get 'auth/failure', to: 'connections#omniauth_failure'
  
  devise_for :users, controllers: {registrations: 'registrations'}
  root 'pages#home' 
  get 'dashboard', to: 'pages#dashboard' 

end
