class ContentsController < ApplicationController
before_action :set_content
def show; end

private

def set_content
  @content = Content.find(params[:id])
  authorize @content
end

end
