class DogsController < ApplicationController
  # NEED: index method
  # NEED: Render index.html - lists out all dogs
  # NEED: index.html links to a dog's show page
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end
end
