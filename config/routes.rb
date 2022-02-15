Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'tasks#index', as: :tasks
  # get 'tasks', to: 'tasks#index'
  get 'tasks/new', to: 'tasks#new', as: :new
  # show
  get 'tasks/:id', to: 'tasks#show', as: :task
  # create
  post '/', to: 'tasks#create'
  # edit
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  # update
  patch 'tasks/:id', to: 'tasks#update'
  # delete
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete
end
