Rails.application.routes.draw do
  resources :actors, only: [:index, :new, :create]
end
