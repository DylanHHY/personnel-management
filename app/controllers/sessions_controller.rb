
class SessionsController < ApplicationController
  def create
    employee = Employee.login(params[:employee])

    if employee
      # 發號碼牌 發 session
      session[:employee_session] = employee.id
    else
      redirect_to "/employees/sign_in", notice: "登入失敗"
    end
  end

  def destroy
    session[:employee_session] = nil
    redirect_to root_path, notice: "已登出"
  end
end