Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#top'
  get 'maps'=>'photograms#map'

  resources :users, only: [:index, :show, :edit, :update]
  resources :photograms, only: [:new, :index, :show, :edit, :create, :update, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
