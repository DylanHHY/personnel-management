class ClientsController < ApplicationController
  before_action :find_client, only: [:show, :edit, :update]
  
  def index
    @clients = Client.all
  end
  
  def new
    @client = Client.new
  end
  
  def create
    @client = Client.new(Client_params)
    if @client.save
      redirect_to clients_path, notice: "客戶資料建立完成！"
    else
      render :new
    end
  end
  
  def show
  end
  
  def edit
  end
  
  def update
    if @client.update(client_params)
      redirect_to clients_path, notice: "客戶資料修改完成"
    else
      render :edit
    end
  end

  private
  def client_params
    params.require(:clients).permit(:name, :email, :tel, :add, :note)
  end
  
  def find_Client
    @client = Client.find(params[:id])
  end
end
