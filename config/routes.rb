Rails.application.routes.draw do
  resources :impact_types
  resources :reporters
  resources :articles
  resources :impacts
  resources :users
  resources :impact_records
  get '/search' => 'articles#search'
  root "articles#index"

  get '/impact_search' => 'impacts#article_selector'


  get "/sign_in" => "sessions#new", as: 'new_session'
  post "/sessions" => "sessions#create"
  get "/profile" => "users#profile", as: 'profile'
  get "/reporters/:id/search" => "reporters#search_results", as: 'reporter_search'
  get "/log_out" => "sessions#destroy"
  get "impact_selector" => "impacts#selector", as: 'impact_selector'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
