class ContactMailer < ActionMailer::Base
  default :from => "support@binkity.com"
  default :to => "binkity.contact@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "Nowa wiadomosc - Binkity")
  end
end
