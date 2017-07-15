Rails.application.routes.draw do
  resources :bookmarks
  get "home", to: 'welcome#index'

  devise_for :users, controllers: { sessions: 'users/sessions', omniauth_callbacks: 'users/omniauth_callbacks'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
    get '/', to: 'users/sessions#new'
    post '/users/sign_in', to: 'users/sessions#create'
    delete 'users/session', to: 'users/sessions#destroy'
  end

  # get '/welcome', to: 'users#show'
  resources :users, only: [:show, :index]

end
