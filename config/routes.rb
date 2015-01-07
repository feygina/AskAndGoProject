Rails.application.routes.draw do
  devise_for :users
  resources :questions do
    resources :answers
  end
  root "questions#index"

end
