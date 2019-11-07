require "sinatra/base"
require "./lib/bookmark"

class BookmarkManager < Sinatra::Base
  get "/" do
    redirect "/bookmarks"
  end

  get "/bookmarks" do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  get "/bookmarks/add" do
    erb :'bookmarks/new'
  end

  post "/bookmarks" do
    Bookmark.create(url: params[:url])
    redirect "/bookmarks"
  end

  get "/bookmarks-test" do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  post "/bookmarks/new" do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect "/bookmarks"
  end

  run! if app_file == $0
end
