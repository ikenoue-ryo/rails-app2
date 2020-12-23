class PlansController < ApplicationController

  def index
    @plans = Plan.all
    # モーダル使用
    @plan = Plan.new

  end

  def new
    @plan = Plan.new
  end

  def show
    @plan = Plan.find(params[:id])
  end

  def create
    Plan.create(plan_params)
    redirect_to plans_path
  end

  def edit
    @plan = Plan.find(params[:id])
  end

  def update
    @plan = Plan.find(params[:id])
    if @plan.update(plan_params)
      redirect_to plans_path, notice: "編集しました"
    else
      render 'edit'
    end
  end

  def destroy
    @plan = Plan.find(params[:id])
    @plan.destroy
    redirect_to plans_path, notice:"削除しました"
  end

  private

  def plan_params
    params.require(:plan).permit(:title, :content, :start_time)
  end
end