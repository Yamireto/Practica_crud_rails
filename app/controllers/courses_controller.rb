class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit]
  # after_action :
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

  def show
    #@course = Course.find params[:id]
  end
  
  def edit
    #@course = Course.find params[:id]
  end

  private

  def set_course
    @course = Course.find params[:id]
  end

  def course_params
    params.required(:course).permit(:title, :description, :visible, :published)
  end
end
