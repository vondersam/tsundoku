Rails.application.routes.draw do
  devise_for :users,
     controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  devise_for :views

  root 'static_pages#home'

  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :reply, :restore, :mark_as_read
    end

    collection do
      delete :empty_trash
    end
  end

  resources :messages, only: [:new, :create]

  resources :genres, only: [:show]
  get 'physical_books/searchbook' => 'physical_books#retrieve_from_ggb'
  resources 'physical_books'
  resources 'users', only: [:index, :show]
  get 'users/:id/index_of_books' => 'users#index_of_books', as: :index_of_books

  resources 'wishlists'
  resources 'wishlists_item'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
