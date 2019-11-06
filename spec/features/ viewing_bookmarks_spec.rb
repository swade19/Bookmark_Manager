require "./app.rb"
require "pg"

feature "Viewing Bookmarks" do
  #scenario "visiting the index page" do
  #visit ("/")
  #expect(page).to have_content "Bookmark Manager"
  #end

  scenario "allows you to view the bookmarks" do
    connection = PG.connect(dbname: "bookmark_manager_test")
    connection.exec("INSERT INTO bookmarks VALUES (1, 'http://www.google.com');")
    visit ("/bookmarks-test")
    expect(page).to have_content "http://www.google.com"
  end
end
