Rails.application.routes.draw do
  resources :books
  get 'top' => 'homes#top'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  root 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end