UramonArticleViewer::Engine.routes.draw do
  resources :articles, only: [:index, :show]
end
