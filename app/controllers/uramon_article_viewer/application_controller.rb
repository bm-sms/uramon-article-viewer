module UramonArticleViewer
  class ApplicationController < UramonArticleViewer.parent_controller.constantize
    UramonArticleViewer.helpers.each do |h|
      helper h.constantize
    end
  end
end
