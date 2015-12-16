require_dependency "uramon_article_viewer/application_controller"

module UramonArticleViewer
  class CategoriesController < ApplicationController
    def show
      articles = Article.all

      # TODO: Implement service side API
      @articles = articles.select {|article|
        article["category_id"] == params[:id].to_i
      }

      render "uramon_article_viewer/articles/index"
    end
  end
end
