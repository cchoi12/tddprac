# == Route Map
#
#   Prefix Verb URI Pattern          Controller#Action
#     root GET  /                    todos#index
#    todos GET  /todos(.:format)     todos#index
#          POST /todos(.:format)     todos#create
# new_todo GET  /todos/new(.:format) todos#new
#

Rails.application.routes.draw do
  root to: 'todos#index'

  resources :todos, only: %i[index new create]

  resource :session, only: %i[new create]
end
