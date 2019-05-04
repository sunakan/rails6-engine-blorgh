require "rails_helper"

RSpec.describe BlogEngine::Article, type: :model do
  it "FacotyrBotで生成するものはvalidが通る" do
    article = FactoryBot.create(:article)
    expect(article).to be_valid
  end
end
