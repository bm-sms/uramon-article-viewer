module UramonArticleViewer
  class Category < UramonResource
    class << self
      def resources_path
        '/categories'
      end
    end

    def articles
      Article.all(category_slug: slug)
    end
  end
end
