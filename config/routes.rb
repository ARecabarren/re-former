Rails.application.routes.draw do
  # Create :users resource with :only option, specify :new and :create actions
  resources :users, only: [:new, :create]
end
