Rails.application.routes.draw do
  get 'card/new'

  get 'card/show'

  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'hp_top#index' # ログインor新規登録を選ぶページ
  resources :hp_top, only: :new  # 新規登録方法を選ぶページ
  resources :about, only: :index
  resources :koukoku, only: :index, path: '/about/koukoku/'
  resources :projects, only: :index
  resources :contact, only: :index
  resources :donation, only: :index
  
end
