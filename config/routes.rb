Rails.application.routes.draw do
  resources :users, only: [:show, :edit, :update]
  root to: 'homes#top'
  resources :homes, only: [:create, :update]
  get 'home/edit' => "homes#edit"
  get 'muscle_parts', to: 'muscle_parts#index'
  get 'muscle_part', to: 'muscle_parts#show'
  devise_for :users
end
