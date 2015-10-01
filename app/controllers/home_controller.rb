class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    #@stickers = Sticker.limit(18).order("RANDOM()")
    @stickers = Sticker.limit(18).order("created_at DESC")
  end
end
