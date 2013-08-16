class SupportMailer < ActionMailer::Base
  default from: "from@example.com"

  def notify(params)

    @subject = params[:subject]
    @message = params[:message]

    mail(to: 'own@example.com',
         subject: @subject)
  end
end
