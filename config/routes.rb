Rails.application.routes.draw do
  root 'static_pages#home'
  devise_for :users
  devise_for :views

  resources 'genre'
  resources 'physical_books'
  resources 'users', only: [:show]
  get 'users/:id/index_of_books' => 'users#index_of_books', as: :index_of_books

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

