class Emailer < ApplicationMailer

  default from: 'zhomos.com'

  def deliver_email(outmail)
    @outmail = outmail
    @url  = 'http://zhomos.com'
    mail(to: @outmail.to, subject: @outmail.subject, body: @outmail.body)
  end


end
