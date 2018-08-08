Rails.application.routes.draw do
  


  # Devise 관련 라우팅
  devise_for :users

  #search 관련 라우팅
  get 'posts/search'
  get :search, controller: :posts
  get :autocomplete, controller: :posts



  # Post(화장품등록) 관련 라우팅 (REST)
	resources :posts

  

  # 친구 기능 라우팅  
  resources :friend_requests
  get 'friends/index'
  delete 'friends/destroy/:id' => 'friends#destroy', :as => 'friends_destroy'
  


  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'posts#title'

end
