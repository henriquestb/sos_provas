class CartsController < ApplicationController
  before_action :find_and_authorize_cart, only: [:pagamento,:update, :resumo, :destroy]
  def index
    @cart = policy_scope(Cart).order(created_at: :desc)
    @cart = Cart.find_or_create_by!(user: current_user, status: false)
    @cart_subjects = @cart.cart_subjects
    @total = 0
    @cart_subjects.each do |prod|
      @total == prod.product.price
    end
    @cart = Cart.find(params[:id])
  end

  def pagamento
    authorize Cart
  end

  def update
  end

  def destroy
    @cart.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { head :no_content }
    end
  end

  private

  def find_and_authorize_cart
    @cart = Cart.find_or_create_by!(user: current_user, status: false)
    authorize @cart
  end
end
