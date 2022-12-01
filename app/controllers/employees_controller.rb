class EmployeesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_employee, only: [:show, :edit, :update]
  
  def index
    @employees = Employee.all
  end
  
  def new
    @employee = Employee.new
  end
  
  def create
    @employee = @_user.build_employee(employee_params)
    # render html: params
    if @employee.save
      redirect_to employees_path, notice: "員工資料建立完成！"
    else
      render :new
    end
  end
  
  def show
    # if current_user 
  end
  
  def edit
  end
  
  def update
    if @employee.update(employee_params)
      redirect_to employees_path, notice: "員工資料修改完成"
    else
      render :edit
    end
  end

  private
  def employee_params
    params.require(:employee).permit(:name, :email)
  end
  
  def find_employee
    @employee = Employee.find(params[:id])
  end
end
