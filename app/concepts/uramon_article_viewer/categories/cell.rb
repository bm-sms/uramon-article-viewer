module UramonArticleViewer
  module Categories
    class Cell < ::Cell::Concept
      include ::Cell::Haml

      # Setup view path for cells in Rails Engine: https://github.com/apotonick/cells/issues/280
      view_paths << UramonArticleViewer::Engine.root.join('app/concepts')

      def menu
        @categories = Category.all

        render view: :menu
      end
    end
  end
end
