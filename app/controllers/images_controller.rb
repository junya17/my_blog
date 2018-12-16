class ImagesController < ApplicationController
  before_action :authenticate_account!
  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.create params.require(:image).permit(:name, :image) # POINT
    redirect_to @image
  end

  def show
    @image = Image.find(params[:id])
  end

  def edit
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])
    @image.update params.require(:image).permit(:name, :image) # POINT
    redirect_to @image
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to images_path, notice: 'Post was successfully destroyed.'
  end
end
