require "webpacker/helper"

module BlogEngine
  module ApplicationHelper
    include ::Webpacker::Helper
    def current_webpacker_instance
      BlogEngine.webpacker
    end
  end
end
