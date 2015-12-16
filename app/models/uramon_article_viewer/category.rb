module UramonArticleViewer
  class Category < UramonResource
    class << self
      def resources_path
        '/categories'
      end
    end
  end
end
