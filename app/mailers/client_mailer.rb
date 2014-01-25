# encoding: UTF-8
class ClientMailer < ActionMailer::Base

  default from: 'notifications@example.com'

  def client_welcome_email(client)
    @client = client
    mail(to: 'bereg.beseda@gmail.com', subject: 'Личное сообщение от нового клиента касательно консультации')
    mail(to: 'email2', subject: 'Личное сообщение от нового клиента касательно консультации')
    mail(to: 'email3', subject: 'Личное сообщение от нового клиента касательно консультации')
  end

end
