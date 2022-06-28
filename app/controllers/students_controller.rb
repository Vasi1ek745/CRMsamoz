class StudentsController < ApplicationController
  def index
    @student = Student.all
  end

  def show
    @student = Student.find(params[:id])
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
  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      redirect_to students_path
    else
      render :edit
    end

  end

  def destroy
    @student = Student.find(params[:id])
    @student.delete
    redirect_to students_path
  end


private
  def student_params
    params.require(:student).permit(:name , :subject, :class_in_school, :location, :pay_by_hour, :other)  

  end
end