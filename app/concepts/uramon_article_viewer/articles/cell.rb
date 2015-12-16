module UramonArticleViewer
  module Articles
    class Cell < ::Cell::Concept
      include ::Cell::Haml

      # Setup view path for cells in Rails Engine: https://github.com/apotonick/cells/issues/280
      view_paths << UramonArticleViewer::Engine.root.join('app/concepts')

      def recently_updated
        @articles = Article.all

        render view: :recently_updated
      end
    end
  end
end
