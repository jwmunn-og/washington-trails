class TrailsController < ApplicationController
  def index
    @trails = Trail.order('updated_at DESC')
  end

  def new
    @trail = Trail.new
  end

  def create
    Trail.create(trail_params)
    redirect_to root_path
  end

  private
  
  def trail_params
    params.require(:trail).permit(:name, :location, :length, :elevation)
  end
end
