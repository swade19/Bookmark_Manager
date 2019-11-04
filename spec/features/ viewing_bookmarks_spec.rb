require "./app.rb"

feature "Viewing Bookmarks" do
  scenario "visiting the index page" do
    visit ("/")
    expect(page).to have_content "Bookmark Manager"
  end

  scenario "allows you to view the bookmarks" do
    visit ("/bookmarks")
    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.facebook.com"
    expect(page).to have_content "http://www.makersacademy.com"
  end
end
