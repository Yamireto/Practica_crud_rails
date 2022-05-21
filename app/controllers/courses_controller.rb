class CoursesController < ApplicationController
  def index
    @courses = Course.where(visible:true)
  end

  def new
    @course = Course.new
  end

  def create
    # @course = Course.create title: params[:course][:title], description: params[:course][:description], visible: params[:course][:visible], published: params[:course][:published]
    @course = Course.create course_params
    redirect_to courses_path
  end

  private

  def course_params
    params.required(:course).permit(:title, :description, :visible, :published)
  end
end
