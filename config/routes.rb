UramonArticleViewer::Engine.routes.draw do
  resources :articles, only: [:index, :show]
  resources :categories, only: [:show], path: "category"
  root "articles#index"
end
