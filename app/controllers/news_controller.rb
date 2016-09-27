class NewsController < ApplicationController
  def new
  end

  def create
    render plain: params[:news].inspect
  end
end
