class OrdersController < ApplicationController
  STATUS_TRANSLATE = {paid: 'pago',pending: 'pendente'}
  def create
    subject = Subject.find(params[:subject_id])
    order  = Order.create!(subject: subject, amount: subject.price, state: 'pending', user: current_user)
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: subject.name,
        images: [url_for(subject.photo)],
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
    @status = STATUS_TRANSLATE[@order.state.to_sym]
    authorize Order
  end
end
