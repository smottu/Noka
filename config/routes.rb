Rails.application.routes.draw do



  root to: 'homes#top'


  devise_for :users
  devise_for :admins



  namespace :admin do
  end

  scope module: :public do
    resources :items, only: [:index, :show]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
