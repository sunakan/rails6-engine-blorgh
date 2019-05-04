FactoryBot.define do
  factory :article, class: BlogEngine::Article do
    title { "タイトル" }
    body  { "内容" }
  end
end
