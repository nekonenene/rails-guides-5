Rails.application.routes.draw do

  root 'welcome#index'

  get 'welcome/index'

  # index, create, new, edit, show, update, destroy すべて作られる
  resources :articles do
    resources :comments
  end

end
