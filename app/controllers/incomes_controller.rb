class IncomesController < ApplicationController

  def index
    @incomes = Income.order(created_at: :asc)
  end
end
