class StickersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  #before_filter :authenticate_user!, except => [:show, :index]
  before_action :set_sticker, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @stickers = Sticker.all
    respond_with(@stickers)
  end

  def show
    respond_with(@sticker)
  end

  def new
    @sticker = Sticker.new
    respond_with(@sticker)
  end

  def edit
  end

  def create
    @sticker = Sticker.new(sticker_params)
    @sticker.save
    respond_with(@sticker)
  end

  def update
    @sticker.update(sticker_params)
    respond_with(@sticker)
  end

  def destroy
    @sticker.destroy
    respond_with(@sticker)
  end

  private
    def set_sticker
      @sticker = Sticker.find(params[:id])
    end

    def sticker_params
      params.require(:sticker).permit(:image, :user_id)
    end
end
