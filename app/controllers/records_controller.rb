class RecordsController < ApplicationController
  before_action :find_record, only: [:show, :edit, :update]
  
  def new
    @record = Record.new
  end
  
  def create
    @record = Record.new(record_params)
    if @record.save
      redirect_to clients_path, notice: "訪視資料建立完成！"
    else
      render :new
    end
  end
  
  def show
  end
  
  def edit
  end
  
  def update
    if @record.update(record_params)
      redirect_to clients_path, notice: "訪視資料修改完成"
    else
      render :edit
    end
  end

  private
  def record_params
    params.require(:record).permit(:name, :email, :tel, :add, :note)
  end
  
  def find_record
    @record = record.find(params[:id])
  end
end
