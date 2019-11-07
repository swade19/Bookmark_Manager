require "./app.rb"
require "pg"

feature "Viewing Bookmarks" do
  scenario "bookmarks are visable" do
    Bookmark.create(url: "http://www.markersacademy.com", title: "Makers Academy")
    Bookmark.create(url: "http://www.destroyallsoftware.com", title: "Destroy All Software")
    Bookmark.create(url: "http://www.google.com", title: "Google")

    visit "/bookmarks"

    expect(page).to have_link("Makers Academy", hred: "http://www.makersacademy.com")
    expect(page).to have_link("Destroy All Software", href: "htpp://www.destroyallsoftware.com")
    expect(page).to have_link("Google", href: "http://wwww.google.com")
  end
end
