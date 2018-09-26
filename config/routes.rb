Rails.application.routes.draw do
  namespace :api do
    resources :tweets, only: [:index, :create]
  end

  if Rails.env.production?
    get '*other', to: 'static#index'
  end
end
