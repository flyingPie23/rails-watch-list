class MoviesController < ApplicationController

  before_action :set_list, only: %i[new]

  def new
    @list = List.find(set_list)
    @movies = Movie.all
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end
end
