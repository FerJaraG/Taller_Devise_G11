Rails.application.routes.draw do
  get 'histories/my_histories', to: 'histories#my_histories'
  resources :histories
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
  }

  resources :users

  
  #get 'histories/my_histories', to: 'histories#index', as: 'my_histories'

  root "histories#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
