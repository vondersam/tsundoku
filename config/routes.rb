Rails.application.routes.draw do
  devise_for :users,
     controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  devise_for :views

  root 'static_pages#home'

  resources 'genre'
  get 'physical_books/searchbook' => 'physical_books#retrieve_from_ggb'
  resources 'physical_books'
  resources 'users', only: [:show]
  get 'users/:id/index_of_books' => 'users#index_of_books', as: :index_of_books

  resources 'wishlist'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
