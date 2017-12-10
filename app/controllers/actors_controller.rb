class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def new
    @actors = Actor.new
  end

  def create
    @actors = Actor.new(actors_params)
    if @actors.save
      redirect_to actors_path
    else
      render :new
    end
  end

  private
  def actors_params
    params.require(:actor).permit(:name, :bio, :birth_date, :birth_place, :death_date, :death_place, :image_url, :alive)
  end

end
