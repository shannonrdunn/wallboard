class FeedController < ApplicationController
  def index
    redirect_to :controller => 'sessions', :action => 'connect' if !session[:access_token] 

    client = Instagram.client(:access_token => session[:access_token])
    @user = client.user
    @recent_tagged_items = client.tag_recent_media('slumlyfe')
  end
end
