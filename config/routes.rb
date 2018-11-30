Rails.application.routes.draw do
  root 'todos#index'
  get '/todos/list'
  get '/todos', to: 'todos#index'
  post '/todos', to: 'todos#create'
  get 'todos/new'
  get 'todos/:id/edit', to: 'todos#edit', as: 'todo_edit'
  get 'todos/:id', to: 'todos#show', as: 'todo'
  patch 'todos/:id', to: 'todos#update'
  delete 'todos/:id', to: 'todos#destroy', as: 'todo_destroy'
  get 'todos/:id/complete', to: 'todos#complete', as: 'todo_complete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
