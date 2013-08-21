Gallery::Application.routes.draw do

  resources :supports


  devise_for :users

  resources :albums do
    resources :photos
  end

  resources :photos, only: [:show, :edit]

  root 'albums#index'

end
