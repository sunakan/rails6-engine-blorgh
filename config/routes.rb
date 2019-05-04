BlogEngine::Engine.routes.draw do
  root to: "fuga#index"
  resources :articles
end
