class IncomesController < ApplicationController

  def index
    @incomes = Income.order(created_at: :asc)
  end
  
  def new
    @income = Income.new()
  end
    
  def show
  end

  def edit
  end
  
private
  def set_income
    @income = Income.find(params[:id])
end
