require "haml-rails"
require "faraday"
require "faraday/digestauth"
require "cells"
require "cells-haml"
require "uramon_article_viewer/engine"

module UramonArticleViewer
  class << self
    def configure
      yield self
    end
  end

  cattr_accessor :article_service_host

  configure do |config|
    config.article_service_host = 'http://localhost:3000'
  end
end
