class PaymentController < ApplicationController
  include VerifiedToken
  
  verified_token! only: [:verification]
  
  
  def index
    @product = Product.find(params[:product]) if params[:product].present?
  end
  
  def purchase
    @payment = Payment.create(payment_params.merge!(:name => Payment.generate_for_name, :status => Payment::PENDING_STATUS))
    @payment.products = [Product.find(params[:product])] 

    
  end
  
  def verification
    payment = Payment.find(params[:payment_id]) 
    payment.update(payment_params.merge!(:status => Payment::VERIFIED_STATUS))
    
    redirect_to root_path(confirm: 'ok')
  end
  
  # ajax generate TOTP
  def ajax_generate_token
    totp = ROTP::TOTP.new("base32secret3232")
    totp.now
    
    render text: totp.now
  end
  
  
  
  private
  
  def payment_params
    params.require(:payment).permit(
      :name,
      :token,
      :ccnumber,
      :status,
      :quantity,
      :user_id,
      :bank_id)
      
      
  end
end