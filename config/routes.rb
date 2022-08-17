Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:new, :create]
    collection do
      get :top
    end
  end
end
