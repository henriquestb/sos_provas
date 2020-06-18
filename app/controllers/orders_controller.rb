class OrdersController < ApplicationController
  def create
    subject = Subject.find(params[:subject_id])
    order  = Order.create!(subject: subject, amount: subject.price, state: 'pending', user: current_user)
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: subject.name,
        images: [subject.photo.key],
        amount: subject.price_cents,
        currency: 'brl',
        quantity: 1
      }],
      success_url: order_url(order),
      cancel_url: order_url(order)
    )
    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
    authorize Order
  end

  def show
    @order = current_user.orders.find(params[:id])
    authorize Order
  end
end
