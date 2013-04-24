Lepan::Application.routes.draw do

  resources :contacts

  resources :quotes do
    post :sort, on: :collection
  end

  resources :books

  resources :sessions

  resources :users

  get 'api/get_book_quotes/:book_code' => 'api#get_book_quotes'

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"

  root to: 'users#home'
  match '/about' => "users#about", :as => "about"
  
end
