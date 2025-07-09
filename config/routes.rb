Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root "posts#index"

  get "posts/index" =>  "posts#index"
  get "posts/new" => "posts#new"
   get "posts/:id/edit",to: "posts#edit", as: 'posts_edit'
  get "posts/show/:id", to: "posts#show", as: "posts_show"
  patch "posts/update/:id",to: "posts#update", as: 'posts_update'
  delete "posts/destroy/:id", to: "posts#destroy", as: "posts_destroy"
  post "posts/create" => "posts#create"
end
