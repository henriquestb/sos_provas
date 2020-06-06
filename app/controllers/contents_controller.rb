class ContentsController < ApplicationController
before_action :set_course, :set_subject, :set_content

def show
  @all_classes = @subject.contents
  authorize Content
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
