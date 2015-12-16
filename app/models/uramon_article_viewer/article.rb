module UramonArticleViewer
  class Article < UramonResource
    class << self
      def resources_path
        '/articles'
      end
    end
  end
end
