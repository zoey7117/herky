Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'buildings#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :buildings
    resources :apartments
    get '/apt', to: 'apartments#custom', as: 'apt'
    get '/biggest_apt', to: 'apartments#largest_apt', as: 'biggest_apt'

    #      route in browser   view                 path
    get '/most_apt', to:'buildings#most_apt', as: 'most_apt'
    get '/lgst_apt', to: 'buildings#lgst_apt', as: 'lgst_apt'
    get '/has_floors', to:'buildings#most_floors', as: 'has_floors'
    get '/hello', to: 'apartments#custom'


end
