Rails.application.routes.draw do
  resources :bookmarks
  # get '/welcome', to: 'users#show'
  resources :users, only: [:show, :index]
  get 'tags/:tag', to: 'bookmarks#index', as: :tag

  get "home", to: 'welcome#index'
  devise_for :users, controllers: { sessions: 'users/sessions', omniauth_callbacks: 'users/omniauth_callbacks'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
    # get '/', to: 'users/sessions#new'
    post '/users/sign_in', to: 'users/sessions#create'
    delete 'users/session', to: 'users/sessions#destroy'
  end

  as :user do
    authenticated :user do
      root 'users#show', as: '/'
    end
    unauthenticated :user do
      root 'users/sessions#new', as: "/"
    end
  end

end
