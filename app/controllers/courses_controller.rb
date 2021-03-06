class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:show]

  def home
  end

  def index
    @courses = policy_scope(Course).order(created_at: :desc)
  end

  def show
    @subjects = @course.subjects
  end

  # GET /courses/new
  def new
    @course = Course.new
    authorize @course
  end

  # GET /courses/1/edit
  def edit; end

  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'course was successfully destroyed.' }
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
    @course = Course.new(course_params)
    authorize @course
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
    authorize @course
  end
  # Only allow a list of trusted parameters through.
  def course_params
    params.require(:course).permit(:name, :description, :icon, :photo)
  end
end
