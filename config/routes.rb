Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
    get '/', to: 'users/sessions#new'
    post '/users/sign_in', to: 'users/sessions#create'
  end

end
