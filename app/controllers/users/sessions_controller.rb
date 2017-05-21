class Users::SessionsController < Devise::SessionsController
  layout false
  
  def forgot_password
  end

  def send_reset_password_token
  	
  end
end
