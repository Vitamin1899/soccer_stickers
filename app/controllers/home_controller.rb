class HomeController < ApplicationController
  def index
    @stickers = Sticker.all
  end
end
