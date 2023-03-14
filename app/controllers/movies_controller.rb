class MoviesController < ApplicationController
  def new
    @movies= Movie.all
  end
end
