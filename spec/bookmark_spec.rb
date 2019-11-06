require "bookmark"

describe Bookmark do
  describe ".all" do
    # it "returns all bookmarks" do
    #   bookmark = Bookmark.all
    #   expect(bookmark[0]["url"]).to include ("http://www.google.com")
    # end

    it "returns a list of bookmarks" do
      connection = PG.connect(dbname: "bookmark_manager_test")

      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.twitter.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.youtube.com');")
      bookmarks = Bookmark.all
      expect(bookmarks).to include("http://www.twitter.com")
      expect(bookmarks).to include("http://www.youtube.com")
    end
  end

  describe ".create" do
    it "creates a new bookmark" do
      Bookmark.create(url: "http://www.yahoo.com")

      expect(Bookmark.all).to include "http://www.yahoo.com"
    end
  end
end
