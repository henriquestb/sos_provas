class ContentsController < ApplicationController
  before_action :set_course, :set_subject, :set_content

  def show
    @all_classes = @subject.contents
    authorize Content
  end

  def new
    @content = Course.new
  end

  def update
    respond_to do |format|
      if @content.update(course_params)
        format.html { redirect_to @course, notice: 'course was successfully updated.' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_course
    @course = Course.find(params[:course_id])
  end

  def set_subject
    @subject = @course.subjects.find(params[:subject_id])
  end

  def set_content
    @content = @subject.contents.find(params[:id])
  end

end
