class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:show]

  def home
  end

  def index
    @courses = Course.all
  end

  def show
    @subjects = @course.subjects
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
    # @dose = Dose.new
  end

  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'course was successfully updated.' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
    @course = course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'course was successfully created.' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_course
    @course = Course.find(params[:id])
  end
  # Only allow a list of trusted parameters through.
  def course_params
    params.require(:course).permit(:name)
  end
end
