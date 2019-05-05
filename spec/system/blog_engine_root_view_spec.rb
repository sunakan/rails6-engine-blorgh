require "rails_helper"

describe "blog_engineのrootページ", type: :system do
  before do
    visit blog_engine_path
  end

  #it "Fuga1という文字列がある" do
  #  expect(page).to have_content "Fuga1"
  #end

  it "jsによって'Sprocketで追加したh3'という文字列がある", js: true do
    expect(page).to have_content "Sprocketで追加したh3"
  end
end
