module UramonArticleViewer
  class Article < UramonResource
    class << self
      def resources_path
        '/admin/articles'
      end
    end
  end
end
