Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  root to:'homes#top'
  get "home/about"=>"homes#about"

  resources :books, only: [:index,:show,:edit,:create,:destroy,:update]do
      # 4⃣いいね機能
      resource :favorites, only: [:create, :destroy]
          # 4⃣コメント機能
          resources :book_comments, only: [:create, :destroy]
 end
  resources :users, only: [:index,:show,:edit,:update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
