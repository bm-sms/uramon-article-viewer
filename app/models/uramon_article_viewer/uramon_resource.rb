module UramonArticleViewer
  class UramonResource
    BASE_URI = "http://localhost:3000/"

    class << self
      def all
        response = request_as_json(resources_path)

        parse_as_model(response.body)
      end

      def find(id)
        response = request_as_json(resource_path(id))

        parse_as_model(response.body)
      end

      private

      def connection
        @connection ||= Faraday::Connection.new(:url => BASE_URI) do |builder|
          builder.use Faraday::Request::UrlEncoded
          builder.use Faraday::Response::Logger
          builder.use Faraday::Adapter::NetHttp
        end
      end

      def resources_path
        raise NotImplementedError
      end

      def resource_path(id)
        [resources_path, id].join('/')
      end

      # TODO Return model instance instead of just Hash
      def parse_as_model(json)
        JSON.parse(json)
      end

      def request_as_json(path)
        connection.get(path + '.json')
      end
    end
  end
end
