class BodiesController < ApplicationController

  def index
    @bodies = Body.all
    authorize @bodies
  end
end
