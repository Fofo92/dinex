class BodiesController < ApplicationController

  def index
    @bodies = Body.all
    authorize @bodies
  end

  def show
    @body = Body.find(params[:id])
    authorize @body
  end
end
