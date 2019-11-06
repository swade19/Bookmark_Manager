feature "Adding a new bookmark" do
  scenario "A user can add a bookmark to Bookmark Manager" do
    visit("/bookmarks/add")
    fill_in("url", with: "http://www.skype.com")
    click_button("Submit")

    expect(page).to have_content "http://www.skype.com"
  end
end
