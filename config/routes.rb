Rails.application.routes.draw do
  resources :migrations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'alpha#home'
  get 'about', to: 'alpha#about'

  resources :articles

  get 'signup', to: 'users#new'

  resources :users, except: [:new]

  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'

end
