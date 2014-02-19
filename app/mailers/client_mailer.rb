# encoding: UTF-8
class ClientMailer < ActionMailer::Base

  default from: 'admin@happy-vita.com'

  def client_welcome_email(client)
    @client = client
    mail(to: 'bereg.beseda@ukr.net', subject: 'Личное сообщение от нового клиента касательно консультации')
  end

end
