Rails.application.routes.draw do
  get "send_test", to: "home#send_test"
  get "disconnect" => "home#disconnect"

  namespace :fera do
    post "hooks/review_create" => "hooks#review_create"
  end

  root to: 'home#index'
end
