class StaticPagesController < ApplicationController
  def root

     @instagram = ::Instagram.user_recent_media(2290945337, {:count => 2})
     render :json 
     end
  end
