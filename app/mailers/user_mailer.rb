class UserMailer < ApplicationMailer
	default from: 'bu474754@gmail.com'

  def welcome_email
    @user = params[:user]
    @url  = 'http://getmed.com/sign_in'
    attachments['sliderimg1.jpg'] = File.read('app/assets/images/sliderimg1.jpg')
    mail(
    	to: email_address_with_name(@user.email, @user.name),
    	subject: 'Welcome to Getmed Pharmacuetical'
    )
  end
end
