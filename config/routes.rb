Rails.application.routes.draw do
  devise_for :users
  resources :comments
  get 'pages/info'
  root to: redirect('/ideas')
  resources :ideas
  resources :chat_rooms, only: [:new, :create, :show, :index]
  root 'chat_rooms#index'
  mount ActionCable.server => '/cable'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
