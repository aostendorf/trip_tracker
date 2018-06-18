Rails.application.routes.draw do
  namespace :api do
   resources :trips
    resources :locations
      resources :addresses
  end

  #Do not place any routes below this one
  get '*other', to: 'static#index'
end
