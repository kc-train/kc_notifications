KcNotifications::Engine.routes.draw do
  root 'home#index'
  resources :notifications do
    collection do
      post 'with_kind'
    end
  end

end