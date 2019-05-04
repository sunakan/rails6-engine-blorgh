module BlogEngine
  class Engine < ::Rails::Engine
    isolate_namespace BlogEngine

    config.generators do |g|
      g.test_framework :rspec, fixture: false
      g.fixture_replacement :factory_bot, dir: "spec/factories"
      FactoryBot.definition_file_paths << File.expand_path('../../spec/factories', __dir__) if defined?(FactoryBot)
    end

    initializer "webpacker.proxy" do |app|
      insert_middleware = begin
                             BlogEngine.webpacker.config.dev_server.present?
                           rescue
                             nil
                           end
      next unless insert_middleware

      app.middleware.inser_before(
        0, Webpacker::DevServerProxy,
        ssl_verify_none: true,
        webpacker: BlogEngine.webpacker
      )
    end
  end
end
