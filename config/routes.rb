Rails.application.routes.draw do
  get 'vouchers/index'

  get 'vouchers/show'

  get 'vouchers/new'

  get 'vouchers/create'

  get 'vouchers/edit'

  get 'vouchers/update'

  get 'vouchers/destroy'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
