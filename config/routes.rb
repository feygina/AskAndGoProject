Rails.application.routes.draw do
  devise_for :users
  resources :questions
  root "questions#index"

end
