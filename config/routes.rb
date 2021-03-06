Rails.application.routes.draw do
  resources :line_items, except: [:new, :edit]
  # resources :expenses, except: [:new, :edit]
  resources :products, except: [:new, :edit]
  resources :orders, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
