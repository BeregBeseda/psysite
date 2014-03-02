class ClientsController < ApplicationController

  def create
    @client = Client.new(client_params)
    $addresser = @client
    if @client.save
      $menu = nil
      $addresser = nil
      ClientMailer.client_welcome_email(@client).deliver
      redirect_to clients_path
    else
      redirect_to menu_path($menu)
    end
  end

  def client_params
    params.require(:client).permit(:address, :name, :message)
  end

end
