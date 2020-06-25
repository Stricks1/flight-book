Rails.application.routes.draw do
  resources :planes
  resources :airports
  resources :flights
  devise_for :users, :controllers => { registrations: 'registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "flights#index"

  get 'book/:id', to: 'flights#book', as: 'book_flight'

end
