Rails.application.routes.draw do
  get 'chats/show'
  get 'searchs/top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  root to:'homes#top'
  get "home/about"=>"homes#about"

  resources :books, only: [:index,:show,:edit,:create,:destroy,:update]do
    # 1⃣検索フォーム
    get 'searchs/about', to: "searchs#top", as: "search"
      # 4⃣いいね機能
      resource :favorites, only: [:create, :destroy]
          # 4⃣コメント機能
          resources :book_comments, only: [:create, :destroy]
 end

# DM機能
get 'chat/:id', to: 'chats#show', as: 'chat'
resources :chats, only: [:create]

  resources :users, only: [:index,:show,:edit,:update]do
    # 5⃣フォローフォロワー機能
       resource :relationships, only: [:create, :destroy]
          get 'followings' => 'relationships#followings', as: 'followings'
          get 'followers' => 'relationships#followers', as: 'followers'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
