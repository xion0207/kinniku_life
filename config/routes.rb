Rails.application.routes.draw do
  # devise_scope :user do
  #   get 'log_in' => 'devise/sessions#new', as: :new_user_session
  #   post 'log_in' => 'devise/sessions#create', as: :user_session
  #   delete 'log_out' => 'devise/sessions#destroy', as: :destroy_user_session
  #   get 'sign_up' => 'devise/registrations#new', as: :new_user_registration
  #   post 'sign_up' => 'devise/registrations#create', as: :user_registration
  #   get 'sign_up/cancel' => 'devise_invitable/registrations#cancel', as: :cancel_user_registration
  #   get 'user' => 'devise_invitable/registrations#edit', as: :edit_user_registration
  #   patch 'user' => 'devise_invitable/registrations#update', as: nil
  #   put 'user' => 'devise_invitable/registrations#update', as: :update_user_registration
  #   delete 'user' => 'devise_invitable/registrations#destroy', as: :destroy_user_registration
  #   get 'password' => 'devise/passwords#new', as: :new_user_password
  #   post 'password' => 'devise/passwords#create', as: :user_password
  #   get 'password/edit' => 'devise/passwords#edit', as: :edit_user_password
  #   patch 'password' => 'devise/passwords#update'
  #   put 'password' => 'devise/passwords#update', as: :update_user_password
  # end
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  root to: 'homes#top'
  resources :homes, only: [:create, :destroy]
  patch 'home/update/:id' => 'homes#update', as: 'home_update'
  get 'home/edit' => "homes#edit"
  resources :muscle_parts, only: [:index, :show, :edit, :create, :destroy, :update]
  post 'muscle_parts/create_record' => 'muscle_parts#create_record', as: 'create_record'
  post 'muscle_parts/create_event' => 'muscle_parts#create_event', as: 'create_event'
  get 'new_name' => "muscle_parts#new_name"
  post 'muscle_parts/create_name' => 'muscle_parts#create_name', as: 'create_name'
  delete 'muscle_parts/destroy_record/:id' => 'muscle_parts#destroy_record', as: 'destroy_record'
  delete 'muscle_parts/destroy_event/:id' => 'muscle_parts#destroy_event', as: 'destroy_event'

end
