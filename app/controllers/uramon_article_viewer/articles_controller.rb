require_dependency "uramon_article_viewer/application_controller"

module UramonArticleViewer
  class ArticlesController < ApplicationController
    def index
      @articles = Article.all
    end

    def show
      @article = Article.find(params[:id])
    end
  end
end
