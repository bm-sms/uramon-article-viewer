module UramonArticleViewer
  class Article < UramonResource
    class << self
      def resources_path
        '/articles'
      end
    end

    def category_name
      self['category']['name']
    end

    def category_slug
      self['category']['slug']
    end
  end
end
