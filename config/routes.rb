Rails.application.routes.draw do
  resources :users, only: [:show, :edit, :update]
  root to: 'homes#top'
  resources :homes, only: [:create, :update]
  get 'home/edit' => "homes#edit"
  resources :muscle_parts, only: [:index, :show, :edit, :create, :destroy]
  post 'muscle_parts/create_record' => 'muscle_parts#create_record', as: 'create_record'
  delete 'muscle_parts/destroy_record/:id' => 'muscle_parts#destroy_record', as: 'destroy_record'
  devise_for :users
end
