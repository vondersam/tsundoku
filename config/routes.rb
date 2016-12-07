Rails.application.routes.draw do
  devise_for :users,
     controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  devise_for :views

  root 'static_pages#home'

  resources 'genre'
  resources 'physical_books'
  resources 'users'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

