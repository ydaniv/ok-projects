class ProjectsController < ApplicationController

  def index
    respond_to do |format|
      format.html
      format.json { render :json => {} }
    end
  end

  def show
    respond_to do |format|
      format.html
      format.json { render :json => {} }
    end
  end

end
