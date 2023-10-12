Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show] # ユーザーマイページへのルーティング
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'words/friend_1' => 'words#friend_1'
  get 'words/friend_2' => 'words#friend_2'
  get 'words/friend_3' => 'words#friend_3'
  get 'words/love_1' => 'words#love_1'
  get 'words/love_2' => 'words#love_2'
  get 'words/love_3' => 'words#love_3'
  get 'words/work_1' => 'words#work_1'
  get 'words/work_2' => 'words#work_2'
  get 'words/work_3' => 'words#work_3'
  get 'words/kankou' => 'words#kankou'
  resources :words do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
  root 'words#top'
end