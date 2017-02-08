Rails.application.routes.draw do
  resources :publications
  resources :impact_types
  resources :reporters
  resources :articles
  resources :impacts
  resources :users
  resources :projects
  resources :impact_records
  get '/search' => 'articles#search'
  get '/impact_search' => 'impacts#search'
  root "impact_types#index"
#should remove this duplicate
  get '/impact_search' => 'impacts#article_selector'
  get '/basic_search' =>'impacts#basic_search'
  get '/impact_add_search' => 'impacts#impact_add_search', as: 'impact_add_search'
  get "/sign_in" => "sessions#new", as: 'new_session'
  post "/sessions" => "sessions#create"
  get "/profile" => "users#profile", as: 'profile'
  get "/reporters/:id/search" => "reporters#search_results", as: 'reporter_search'
  get "/log_out" => "sessions#destroy"
  get "impact_selector" => "impacts#selector", as: 'impact_selector'
  get "impact_selector/:id" => "impacts#selector", as: 'impact_selector_id'
  #adding new articles
  get '/add_from_home/:article/:impact_id' => "impact_records#add_from_home", as: 'add_from_home'
  #adding new projects
  get '/add_from_home_project/:project/:impact_id' => "impact_records#add_from_home_project", as: 'add_from_home_project'
  get '/download/:id' => 'articles#articles_download', as: 'download'
  get '/download_impacts' => 'impacts#download', as: 'download_impacts'
  get '/stats' => 'impact_records#stats'
  get '/stats_select/:type' => 'impact_records#stats_select', as: 'stats_select'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
