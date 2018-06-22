Rails.application.routes.draw do
  get 'admin' => 'admin#index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  
  resources :days_of_the_weeks
  resources :todo_list_items
  resources :todos
  resources :dailies 
  resources :profiles
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
