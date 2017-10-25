Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: "welcome#index"

resources :users


match '/tasks/mark_as_done/:id' => 'tasks#mark_as_done!', as: 'markit', via: :put

resources :tasks


end
