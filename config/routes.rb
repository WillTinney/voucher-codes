Rails.application.routes.draw do

  root to: 'vouchers#index'

  devise_for :users

  resources :vouchers, only: [ :new, :create ] do
    member do
      post :upvote
    end
  end

end
