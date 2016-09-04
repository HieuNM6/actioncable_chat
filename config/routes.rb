Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  resources :chatrooms, params: :slug
  devise_for :users
  root 'wellcome#index'
  resources :messages

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
