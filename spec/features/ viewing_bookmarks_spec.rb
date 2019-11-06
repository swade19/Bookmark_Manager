require "./app.rb"
require "pg"

feature "Viewing Bookmarks" do
  #scenario "visiting the index page" do
  #visit ("/")
  #expect(page).to have_content "Bookmark Manager"
  #end

  scenario "allows you to view the bookmarks" do
    Bookmark.create(url: "http://www.google.com")
    visit ("/bookmarks-test")
    expect(page).to have_content "http://www.google.com"
  end
end
