class Emailer < ApplicationMailer

  default from: 'notifications@example.com'

  def deliver_email(outmail)
    @outmail = outmail
    @url  = 'http://example.com/login'
    mail(to: @outmail.to, subject: @outmail.subject, body: @outmail.body)
  end


end
