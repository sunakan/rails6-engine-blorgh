require "blog_engine/engine"

module BlogEngine
  ROOT_PATH = Pathname.new(File.join(__dir__, "..")) # Rails.rootみたいなもん

  class << self
    def webpacker
      @webpacker ||= ::Webpacker::Instance.new(
        root_path:   ROOT_PATH,
        config_path: ROOT_PATH.join("config/webpacker.yml")
      )
    end
  end
end
