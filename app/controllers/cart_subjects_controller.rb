class CartSubjectsController < ApplicationController
  def create
    @subject = Subject.find(params[:subject_id])
    @cart = Cart.find_or_create_by!(user: current_user, status: false)
    @cart_subject = CartSubject.create(subject: @subject, cart: @cart, quantity: '1')
    authorize @cart_subject
    redirect_to root_path
  end

  def destroy
    @cart_subject = CartSubject.find(params[:id])
    authorize @cart_subject
    @cart_subject.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end
