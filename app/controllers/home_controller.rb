class HomeController < ApplicationController

  def index
    @stickers = Sticker.limit(18).order("RANDOM()")
  end
end
