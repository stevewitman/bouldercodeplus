Rails.application.routes.draw do

  resources :activities

  root 'pages#index'

  get "/auth/meetup/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout

  get 'example' => 'example#index'

end
