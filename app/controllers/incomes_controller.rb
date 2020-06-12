class IncomesController < ApplicationController

  def index
    @incomes = Income.order(created_at: :asc)
  end
  
  def new
    @income = Income.new()
  end

  def created
    @income = Income.new(params[:income])
    if income.save
      redirect_to @income, notice: "収入科目を登録しました"
    else 
      render "new"
    end
  end

  def show
  end

  def edit
  end

  def update
    @income.assign_attributes(params[:income])
    if @income.save
      redirect_to @income, notice: "収入科目を登録しました"
    else 
      render "new"
    end
  end

  def destroy
    @income.destroy
    redirect_to :incomes, notice: "科目を削除しました"
  end
  
  
  
private
  def set_income
    @income = Income.find(params[:id])
  end

end
