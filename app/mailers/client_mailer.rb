# encoding: UTF-8
class ClientMailer < ActionMailer::Base

  default from: 'welcome@psysite.com'

  def client_welcome_email(client)
    @client = client
    mail(to: client.email, subject: 'Личное сообщение от нового клиента касательно консультации')
  end

end
