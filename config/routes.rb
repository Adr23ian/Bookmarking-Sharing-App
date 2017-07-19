Rails.application.routes.draw do
  resources :bookmarks do
    member do
      get :save_for_later
    end
  end
  # get '/welcome', to: 'users#show'
  get 'tags/:tag', to: 'bookmarks#index', as: :tag



  get "home", to: 'welcome#index'
  devise_for :users, controllers: { sessions: 'users/sessions', omniauth_callbacks: 'users/omniauth_callbacks'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
    get '/users/sign_in', to: 'users/sessions#new'
    post '/users/sign_in', to: 'users/sessions#create'
    delete 'users/session', to: 'users/sessions#destroy'
  end

  resources :users, only: [:show, :index]

  as :user do
    authenticated :user do
      root 'users#show', as: '/'
    end
    unauthenticated :user do
      root 'users/sessions#new', as: "/"
    end
  end
  post 'add-amigo', to: "users#add_amigo"
end
