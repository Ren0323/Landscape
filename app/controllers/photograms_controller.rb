class PhotogramsController < ApplicationController
  def new
    @photogram = Photogram.new
  end
  
  def create
    @photogram = Photogram.new(photogram_params)
    @photogram.user_id = current_user.id
    if @photogram.save
      redirect_to photogram_path(@photogram)
    else
      @photograms=Photogram.all
      render :index
    end
  end
  
  def index
    @photograms = Photogram.all
  end

  def show
    @photogram = Photogram.find(params[:id])
  end

  def edit
  end
  
  def map
    @photograms = Photogram.all
  end
  
  private
  def photogram_params
    params.require(:photogram).permit(:title, :body, :image, :latitude, :longitude)
  end
  
end
