UramonArticleViewer::Engine.routes.draw do
  resources :articles, only: [:index, :show]
  resources :categories, only: [:show], path: "category", param: :slug
  root "articles#index"
end
