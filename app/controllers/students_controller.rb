class StudentsController < ApplicationController
  def index
    @student = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_path
    else
      render :new
    end
  end

  def update
  end

  def destroy
    @student = Student.find(params[:id])
    @student.delete
    redirect_to students_path
  end


private
  def student_params
    params.require(:student).permit(:name , :subject, :class_in_school, :location, :pay_by_hour)  

  end
end