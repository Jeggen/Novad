class AuthorsController < ApplicationController
  def index
     @authors = Author.order(name: :asc)
  end

  def show
     @author = Author.find( params[:id] )
  end
end
