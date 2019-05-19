class OrderConfirmation < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def order_confirmation(order)
    @order = order
    mail to: "karl.chvojka@gmail.com"
  end
end
