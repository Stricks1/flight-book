Rails.application.routes.draw do
  resources :plane_books
  resources :planes
  resources :airports
  resources :flights
  devise_for :users, :controllers => { registrations: 'registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "flights#index"
end
