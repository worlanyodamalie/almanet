class SendMailer < ApplicationMailer
  #default from: 'from@example.com'

  # def send_email(message)
  #   @message = message
  #   mail(to: @message[:to], subject: 'Message sent via SMTP')
  # end

  def send_email(to,subject,body,organisation)

    @organisation = organisation
    mail(:to => to , :from => @organisation.try(:email) , :subject => subject ) do  |format|
        format.text { render :text => body }
        format.html { render :text => body  }
    end
  end
end
