Rails.application.routes.draw do

  
#Method를 이용해서 이 Resource를 조작하는 방법을 아래에 기술할 것입니다.
resources 'posts'

# get '/posts' => 'posts#index'          #1. 우리가 쓴 글들을 다 볼 수 있는 페이지(Read) clear
# post '/posts' => 'posts#create'        #2. 새 글을 받는 페이지(Create를 해주는 곳) clear

# get '/posts/new' => 'posts#new'        #3. 우리가 새 글을 쓰는 페이지(Read) clear

# get '/posts/:id/edit' => 'posts#edit', as: "edit_post"  #4. 글을 수정하는 페이지

# get '/posts/:id' => 'posts#show', as: "post"       #5. 특정 글을 보는 페이지(Read) clear
# put   '/posts/:id' => 'posts#update'   #6. 수정한 글을 받아서 업데이트해주는 페이지(Update를 해주는 곳)
# patch '/posts/:id' => 'posts#update'   #7. 수정한 글을 받아서 업데이트해주는 페이지(Update를 해주는 곳)
# delete '/posts/:id' => 'posts#destroy' #8. 특정 글을 삭제하는 페이지(Delete를 해주는 곳)






  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
