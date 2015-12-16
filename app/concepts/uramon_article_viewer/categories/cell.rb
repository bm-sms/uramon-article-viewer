module UramonArticleViewer
  module Categories
    class Cell < ::Cell::Concept
      include ::Cell::Haml

      # Setup view path for cells in Rails Engine: https://github.com/apotonick/cells/issues/280
      view_paths << UramonArticleViewer::Engine.root.join('app/concepts')

      def menu
        response = connection.get('/admin/categories.json')

        @categories = JSON.parse(response.body)

        render view: :menu
      end

      private

      BASE_URI = 'http://localhost:3000/'

      def connection
        @connection ||= Faraday::Connection.new(url: BASE_URI) do |builder|
          builder.use Faraday::Request::UrlEncoded
          builder.use Faraday::Response::Logger
          builder.use Faraday::Adapter::NetHttp
        end
      end
    end
  end
end
