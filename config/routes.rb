Gallery::Application.routes.draw do

  resources :comments

  resources :supports


  devise_for :users

  resources :albums do
    resources :photos
  end

  resources :photos, only: [:show, :edit]

  root 'albums#index'

  mount Sidekiq::Web, at: '/sidekiq'
  mount Store::Engine, at: 'catalog'

end
