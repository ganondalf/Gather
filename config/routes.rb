GatherApp::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  resources :issues
  resources :users
  resources :ranks
  resources :objectives
  resources :weeks
  resources :resources

  resources :session, only:[:new, :create, :destroy]

  get '/logout' => 'session#destroy'
  get '/callback' => 'session#github_auth'


  # get '/users/:id/ranks/:id/edit' => 'ranks#edit'





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


# #  Prefix Verb   URI Pattern                                   Controller#Action
#               root GET    /                                             welcome#index
#             issues GET    /issues(.:format)                             issues#index
#                    POST   /issues(.:format)                             issues#create
#          new_issue GET    /issues/new(.:format)                         issues#new
#         edit_issue GET    /issues/:id/edit(.:format)                    issues#edit
#              issue GET    /issues/:id(.:format)                         issues#show
#                    PATCH  /issues/:id(.:format)                         issues#update
#                    PUT    /issues/:id(.:format)                         issues#update
#                    DELETE /issues/:id(.:format)                         issues#destroy
#              users GET    /users(.:format)                              users#index
#                    POST   /users(.:format)                              users#create
#           new_user GET    /users/new(.:format)                          users#new
#          edit_user GET    /users/:id/edit(.:format)                     users#edit
#               user GET    /users/:id(.:format)                          users#show
#                    PATCH  /users/:id(.:format)                          users#update
#                    PUT    /users/:id(.:format)                          users#update
#                    DELETE /users/:id(.:format)                          users#destroy
#          edit_rank GET    /ranks/:id/edit(.:format)                     ranks#edit
#               rank PATCH  /ranks/:id(.:format)                          ranks#update
#                    PUT    /ranks/:id(.:format)                          ranks#update
#    objective_ranks POST   /objectives/:objective_id/ranks(.:format)     ranks#create
# new_objective_rank GET    /objectives/:objective_id/ranks/new(.:format) ranks#new
#         objectives GET    /objectives(.:format)                         objectives#index
#                    POST   /objectives(.:format)                         objectives#create
#      new_objective GET    /objectives/new(.:format)                     objectives#new
#     edit_objective GET    /objectives/:id/edit(.:format)                objectives#edit
#          objective GET    /objectives/:id(.:format)                     objectives#show
#                    PATCH  /objectives/:id(.:format)                     objectives#update
#                    PUT    /objectives/:id(.:format)                     objectives#update
#                    DELETE /objectives/:id(.:format)                     objectives#destroy
#      session_index POST   /session(.:format)                            session#create
#        new_session GET    /session/new(.:format)                        session#new
#            session DELETE /session/:id(.:format)                        session#destroy
#             logout GET    /logout(.:format)                             session#destroy
#           callback GET    /callback(.:format)                           session#github_auth
