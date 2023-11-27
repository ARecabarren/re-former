Rails.application.routes.draw do
  # Create :users resource with :only option, specify :new, :create and :edit actions
  resources :users, only: [:new, :create, :edit, :update]
end
