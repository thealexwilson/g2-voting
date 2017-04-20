class EmployeesController < ApplicationController

  def employees
    @employees = Employee.all
  end

  def create
    @employee = Employee.find(params[:user_id])
    @employee.increment!(:vote_count)
  end

  def upvote
    @employee = Employee.find(params[:id])
    @employee.votes.create
    redirect_to(root_path)
  end

end
