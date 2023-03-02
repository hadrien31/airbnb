Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

resources :adventures do
  resources :bookings
end

resources :adventures
get "/profil", to: "pages#profil"

  # Defines the root path route ("/")
  # root "articles#index"
end

# booking.owner_id = Adventure.user.id
# booking.user_id = current_user
