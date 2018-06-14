Rails.application.routes.draw do
  resources :days_of_the_weeks
  resources :list_items
  resources :todos
  resources :dailies
  resources :profiles
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
