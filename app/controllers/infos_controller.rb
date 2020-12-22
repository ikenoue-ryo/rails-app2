class InfosController < ApplicationController
  def index
  end

  def new
    @info = Info.new
  end


end