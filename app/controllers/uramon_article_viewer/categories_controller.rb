require_dependency "uramon_article_viewer/application_controller"

module UramonArticleViewer
  class CategoriesController < ApplicationController
    def show
      response = @connection.get("/admin/articles.json")
      @articles = JSON.parse(response.body)
      # TODO: Use API
      @articles.select! do |article|
        article["category_id"] == params[:id].to_i
      end

      render "uramon_article_viewer/articles/index"
    end
  end
end
