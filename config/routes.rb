Rails.application.routes.draw do
  get "home", to: 'welcome#index'

  devise_for :users, controllers: { sessions: 'users/sessions', omniauth_callbacks:
    'users/omniauth_callbacks'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
    get '/', to: 'users/sessions#new'
    post '/users/sign_in', to: 'users/sessions#create'
  end

  get 'users/:id', to: 'users#show'

  get '/users', to: 'users#index'

  get '/welcome', to: 'users#show'


end
