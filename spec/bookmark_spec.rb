require "bookmark"

describe Bookmark do
  describe ".all" do
    it "returns all bookmarks" do
      bookmark = Bookmark.all

      expect(bookmark).to include("https://www.google.com")
      expect(bookmark).to include ("https://www.facebook.com")
      expect(bookmark).to include ("https://www.twitter.com")
    end
  end
end
