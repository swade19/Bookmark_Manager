require "sinatra/base"

class BookmarkManager < Sinatra::Base
  get "/" do
    "Bookmark Manager"
  end

  get "/bookmarks" do
    "Bookmarks go here"
  end

  run! if app_file == $0
end
