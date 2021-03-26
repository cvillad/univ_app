class SessionsController < ApplicationController
  skip_before_action :require_user, only: [:new, :create]
  def new 
  end

  def create
    student = Student.find_by(email: session_params[:email])
    if student && student.authenticate(session_params[:password])
      session[:student_id] = student.id
      flash[:notice] = "Successfully logged in"
      redirect_to student
    else
      flash.now[:notice] = "Something was wrong with your login information"
      render :new
    end
  end   

  def destroy
    session[:student_id] = nil 
    flash[:notice] = "Successfully logged out"
    redirect_to root_path
  end

  private 
  def session_params 
    params.require(:sessions)
  end
end