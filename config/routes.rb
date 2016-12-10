Rails.application.routes.draw do
  devise_for :users
  # resources :professor do
  #   collection { post :import }
  # end
  #root to: 'rooms#show'
  root 'home#index'
  get 'home/index' => 'home#index'

  get 'qna/qna_index' => 'qna#qna_index'
  post 'qna/create' => 'qna#create'
  get 'qna/detail/:id' => 'qna#detail'
  post 'qna/detail_create' => 'qna#detail_create'
  get 'qna/destroy/:id' => 'qna#destroy'
  get 'qna/comment_destroy/:id' => 'qna#comment_destroy'

  get 'professor/pro_index' => 'professor#pro_index'
  get 'professor/pro_detail/:id' => 'professor#pro_detail'

  get 'admin/admin_index' => 'admin#admin_index'
  post 'admin/admin_import' => 'admin#admin_import'

  get 'home/score_info' => 'home#score_info'
  get 'home/2012' => 'home#2012'
  get 'home/2013' => 'home#2013'
  get 'home/2014' => 'home#2014'
  get 'home/2015' => 'home#2015'

  get 'store/store_index' => 'store#store_index'
  post 'store/create' => 'store#create'
  get 'store/store_detail/:id' => 'store#store_detail'
  post 'store/store_detail_create' => 'store#store_detail_create'
  get 'store/store_destroy/:id' => 'store#store_destroy'
  get 'store/store_comment_destroy/:id' => 'store#store_comment_destroy'

  get 'intro/intro_main' => 'intro#intro_main'
  get 'intro/intro_forcoms' => 'intro#intro_forcoms'
  get 'intro/intro_download' => 'intro#intro_download'
  get 'intro/intro_puzzle' => 'intro#intro_puzzle'

  mount ActionCable.server => '/cable'
  get 'rooms/show' => 'rooms#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
