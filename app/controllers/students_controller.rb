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
  end

  def update
  end

  def destroy
  end
end
