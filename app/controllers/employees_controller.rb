class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    find_employee
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.create(strong_params)
    redirect_to @employee
  end

  def edit
    find_employee
  end

  def update
    find_employee
    @employee.update(strong_params)
    redirect_to @employee
  end

  def destroy
    find_employee
    @employee.destroy
    redirect_to employees_path
  end

  private
  def strong_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
  end

  def find_employee
    @employee = Employee.find(params[:id])
  end
end
