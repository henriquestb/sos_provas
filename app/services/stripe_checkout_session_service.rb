class StripeCheckoutSessionService
  def call(event)
    order = Order.find_by(checkout_session_id: event.data.object.id)
    order.update(state: 'paid')
    BoughtSubject.create!(subject: order.subject, user: current_user)
  end
end
