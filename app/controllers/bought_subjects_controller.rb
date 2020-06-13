class BoughtSubjectsController < ApplicationController

  def new
    @subject = Subject.find(params[:subject_id])
    authorize @subject, :show?
  end

  def create
    @subject = Subject.find(params[:subject_id])
    @bought_subjects = BoughtSubject.create(subject: @subject, user: current_user)
    authorize @subject, :show?
    redirect_to course_subject_content_path(@subject.courses.first , @subject, @subject.contents.find_by(order:0))
  end
end
