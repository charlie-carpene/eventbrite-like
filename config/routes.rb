Rails.application.routes.draw do
  get 'events/new'
  get 'events/create'
  root 'static_pages#index'
  get 'static_pages/secret'
  devise_for :users
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
