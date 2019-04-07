Rails.application.routes.draw do
  resources :courses
  resources :schedules
  resources :trainers do
    resources :comments
  end
  root to: 'pages#home'
  devise_for :users do
  	resources :comments
  end
  get "/pages", to: "pages#home"
  get "/courses", to: "courses#home"
  get '/search' => 'pages#search', :as => 'search_page'
  post "/", to: "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
