class FixedcostsController < ApplicationController
  def index
    @fixedcosts = Fixedcost.order(created_at: :asc)
  end
  def show
  end
  def new
    @fixedcost = Fixedcost.new()
  end
  def edit
  end
  def create
    @fixedcost = Fixedcost.new(params[:fixedcost])
		if @fixedcost.save
			redirect_to @fixedcost, notice: "固定費科目を登録しました"
		else
			render "new"

  end
  def update
    @fixedcost.assign_attributes(params[:fixedcost])
		if @fixedcost.save
			redirect_to @fixedcost, notice: "固定費科目を登録しました"
		else
      render "new"
    end

  end 
  def destroy
    @fixedcost = Fixedcost.find(params[:id])
		@fixedcost.destroy
		redirect_to :fixedcosts, notice: "科目を削除しました。"
  end

  private
  def set_income
    @fixedcost = Fixedcost.find(params[:id])
  end

  def fixedcost_params
    params.require(:income).permit(:name, :description)
  end


end
