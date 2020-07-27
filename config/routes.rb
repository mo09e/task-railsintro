Rails.application.routes.draw do
  resources :mywords do
    collection do
      post :confirm
    end
  end
end
