Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users

  resources :grids do
    collection do
      get :best
    end
  end
end
