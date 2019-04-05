Rails.application.routes.draw do
  resources :timetables
  resources :notes
  resources :docs
  resources :application_settings
  root 'home#index'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get "/doc/show_all" => "docs#show_all"
  post "/doc/create_partial" => "docs#create_partial"
  get "/doc/show" => "docs#show"
  get "/doc/index" => "docs#index"
  post "/doc/update_partial" => "docs#update_partial"
  post "/timetable/update_partial" => "timetables#update_partial"
  post "/note/show_teacher_notes" => "notes#show_teacher_notes"
end
