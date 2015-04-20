module VerifiedToken
  extend ActiveSupport::Concern


  module ClassMethods
    def verified_token!(options = {})

      before_filter :verified_token!, options
    end

   
  end

  def verified_token!
    totp = ROTP::TOTP.new("base32secret3232")
    
    token = params[:payment][:token]
    redirect_to payment_path(params[:payment_id]) if !totp.verify(token) # not verified
  end
  
end