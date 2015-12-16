module UramonArticleViewer
  class Category < UramonResource
    class << self
      def resources_path
        '/admin/categories'
      end
    end
  end
end
