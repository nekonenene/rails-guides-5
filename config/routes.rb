Rails.application.routes.draw do

  root 'welcome#index'

  get 'welcome/index'

  resources :articles
  # index, create, new, edit, show, update, destroy すべて作られる

end
