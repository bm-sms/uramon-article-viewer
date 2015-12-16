require_dependency "uramon_article_viewer/application_controller"

module UramonArticleViewer
  class CategoriesController < ApplicationController
    def show
      @category = Category.find(params[:slug])
      @articles = @category.articles
    end
  end
end
