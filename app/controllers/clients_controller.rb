class ClientsController < ApplicationController
 before_action :show, only: [:show, :edit, :update, :destroy]
  
  
  def index
    @clients = Client.all
  end
  
  def show
    @client = Client.find(params[:id])
  end
  
  def new
    @client = Client.new
  end
  
  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to clients_path
    else
      render 'new'
    end
  end
  
  private
  
  def client_params
    params.require(:client).permit(:client_name, :business_name, :business_type)
  end
  
end
