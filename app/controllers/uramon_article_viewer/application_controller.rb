module UramonArticleViewer
  class ApplicationController < ::ApplicationController
    BASE_URI = "http://localhost:3000/"

    before_action :setup_connection
    before_action :setup_categories

    private

    def setup_connection
      @connection = Faraday::Connection.new(:url => BASE_URI) do |builder|
        builder.use Faraday::Request::UrlEncoded
        builder.use Faraday::Response::Logger
        builder.use Faraday::Adapter::NetHttp
      end
    end

    def setup_categories
      response = @connection.get("/admin/categories.json")
      @categories = JSON.parse(response.body)
    end
  end
end
