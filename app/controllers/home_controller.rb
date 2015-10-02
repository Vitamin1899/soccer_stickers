class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @stickers = Sticker.paginate(:page => params[:page], :per_page => 15).order("created_at DESC")
  end
end
