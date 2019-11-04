require "./app.rb"

feature "Viewing Bookmarks" do
  scenario "visiting the index page" do
    visit ("/")
    expect(page).to have_content "Bookmark Manager"
  end

  scenario "allows you to view the bookmarks" do
    visit ("/bookmarks")
    expect(page).to have_content "https://www.google.com"
    expect(page).to have_content "https://www.facebook.com"
    expect(page).to have_content "https://www.twitter.com"
  end
end
