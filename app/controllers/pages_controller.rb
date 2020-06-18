class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @courses = Course.all
  end

  def pay
    @subject = Subject.find(params[:subject])
  end
end
