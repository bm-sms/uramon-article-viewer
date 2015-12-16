module UramonArticleViewer
  module ArticlesHelper
    def render_menu_categories
      concept('uramon_article_viewer/categories/cell').(:menu)
    end

    def render_recently_updated_articles
      concept('uramon_article_viewer/articles/cell').(:recently_updated)
    end
  end
end
