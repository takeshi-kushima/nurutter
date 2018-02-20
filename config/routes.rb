Rails.application.routes.draw do
  root to:'tops#show'
  resources :tops
  
  resources :nurutters do
    collection do
      post :confirm
    end
  end
end
