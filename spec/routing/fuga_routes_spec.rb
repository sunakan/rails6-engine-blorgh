require "rails_helper"

RSpec.describe BlogEngine::FugaController, type: :routing do
  routes { BlogEngine::Engine.routes }

  it "/はfuga#index" do
    expect(get: "/").to route_to(controller: "blog_engine/fuga", action: "index")
  end
end
