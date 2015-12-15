require_dependency "uramon_article_viewer/application_controller"

module UramonArticleViewer
  class ArticlesController < ApplicationController
    def index
      response = @connection.get("/admin/articles.json")
      @articles = JSON.parse(response.body)
    end

    def show
      response = @connection.get("/admin/articles/1.json")
      @article = JSON.parse(response.body)
    end
  end
end
