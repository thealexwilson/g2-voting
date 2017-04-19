class EmployeesController < ApplicationController

  def employees_call
    @employees = Employee.all
  end

  def create
    @employee = Employee.find(params[:user_id])
    @employee.increment!(:vote_count)

    # respond_to do |format|
    #   if request.xhr?
    #     format.json { render json: @user, status: :created }
    #     format.html { redirect_to root_path }
    #     # format.js {}
    #   else
    #     format.json { render json: @user.errors, status: :unprocessable_entity }
    #   end
    # end
  end
end
