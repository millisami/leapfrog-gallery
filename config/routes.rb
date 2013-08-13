Gallery::Application.routes.draw do

  devise_for :users

  resources :albums do
    resources :photos
  end

  root 'albums#index'

end
