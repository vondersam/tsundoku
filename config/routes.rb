Rails.application.routes.draw do
  resources 'physical_books'

  root 'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
