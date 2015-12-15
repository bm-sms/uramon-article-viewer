require_dependency "uramon_article_viewer/application_controller"
require "faraday"

module UramonArticleViewer
  class ArticlesController < ::ApplicationController
    BASE_URI = "http://localhost:3000/"

    before_filter :setup_connection

    def index
      response = @connection.get("/admin/articles.json")
      p response.body
      @articles = JSON.parse(response.body)
    end

    def show
      response = @connection.get("/admin/articles/1.json")
      @article = JSON.parse(response.body)
    end

    private

    def setup_connection
      @connection = Faraday::Connection.new(:url => BASE_URI) do |builder|
        builder.use Faraday::Request::UrlEncoded
        builder.use Faraday::Response::Logger
        builder.use Faraday::Adapter::NetHttp
      end
    end
  end
end
