class CoursesController < ApplicationController
  skip_before_action :require_user

  def index 
    @courses = Course.all
  end

  def new 
  end

  def create 
  end

  def edit 
  end

  def update 
  end 

  def destroy 
  end
end