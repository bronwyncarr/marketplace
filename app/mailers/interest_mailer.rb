class InterestMailer < ApplicationMailer
  default from: 'cam022019@coderacademy.edu.au'

  def send_interest_task(user)
    @user = user
    mail(to: @user.email,
      subject: 'Thanks for signing up to make a difference!')
  end
end
