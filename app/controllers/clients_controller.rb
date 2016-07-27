
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
  
  def edit
     
  end
  
  def update
    if @client.update(client_params)
      redirect_to client_path(@client)
    else
      render 'edit'
    end
  end
  
  def destroy
    @client.destroy
    redirect_to clients_path
  end
  
  private
  
  def client_params
    params.require(:client).permit(:client_name, :business_name, :business_type, :bookkeeping_schedule, :payroll_schedule, :tax_projected, :number_of_returns, :street_address, :street_address_2, :city, :state, :zip, 
    :primary_email, :secondary_email, :primary_phone, :secondary_phone)
  end
  
end
