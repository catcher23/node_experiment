class StaticPagesController < ApplicationController
  def root
   @instagram = Instagram.user_recent_media("8liujianwei", {:count => 1})
   render json: JSON.parse(@instagram)
  end
end
