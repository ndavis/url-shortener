class UrlController < ApplicationController

  def create
    @url = user.create_url(original_url: params[:original_url])
    @url.shorten_url
    RouteReload.reload!
  end

  def user
    User.find(params[:user_id])
  end
end
