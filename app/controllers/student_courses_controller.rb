class StudentCoursesController < ApplicationController
  def create
    course = Course.find(params[:course_id])
    unless current_user.courses.include?(course)
      current_user.courses << course
      flash[:notice] = "You have successfully enrolled in #{course.name}"
    else
      flash[:notice] = "Something was wrong with your enrollment"
    end
    redirect_to root_path
  end
end