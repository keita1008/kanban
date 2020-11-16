Rails.application.routes.draw do
  get 'user/edit'
  get 'user/update'
  devise_for :users
  root 'top#index'

  resources :user, only: %i(edit update)
  resources :list, only: %i(new create edit update destroy) do
    resources :card, except: %i(index)
  end
end
