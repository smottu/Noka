Rails.application.routes.draw do



  root to: 'homes#top'


  devise_for :users
  devise_for :admin



  namespace :admin do
    resources :items, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  end

  scope module: :public do
    resources :items, only: [:index, :show]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
