# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                     tasks GET    /tasks(.:format)                                                                         tasks#index
#                           POST   /tasks(.:format)                                                                         tasks#create
#                  new_task GET    /tasks/new(.:format)                                                                     tasks#new
#                 edit_task GET    /tasks/:id/edit(.:format)                                                                tasks#edit
#                      task GET    /tasks/:id(.:format)                                                                     tasks#show
#                           PATCH  /tasks/:id(.:format)                                                                     tasks#update
#                           PUT    /tasks/:id(.:format)                                                                     tasks#update
#                           DELETE /tasks/:id(.:format)                                                                     tasks#destroy
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  resources :tasks, only: [:index, :new, :create, :show, :edit, :update, :destroy]
end
