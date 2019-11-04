require "bookmark"

describe Bookmark do
  describe ".all" do
    it "returns all bookmarks" do
      bookmark = Bookmark.all

      expect(bookmark).to include("http://www.google.com")
      expect(bookmark).to include ("http://www.facebook.com")
      expect(bookmark).to include ("http://www.makersacademy.com")
    end
  end
end
