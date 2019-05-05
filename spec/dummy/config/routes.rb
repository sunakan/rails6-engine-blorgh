Rails.application.routes.draw do
  mount BlogEngine::Engine, at: "/blog"
end
