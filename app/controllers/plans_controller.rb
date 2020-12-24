class PlansController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @plans = Plan.all
    # モーダル使用
    @plan = Plan.new

    @boards_order = Board.all

    search_date = '2020-12-24'
    @todays_booking = Board.where(start_time: search_date.in_time_zone.all_day)

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

  def board_params
    params.require(:board).permit(:name, :furigana, :age, :address, :tel, :email, :title, :body, :start_time, tag_ids: []).merge(user_id: current_user.id)
  end

  def set_target_board
    @board = Board.find(params[:id])
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

  def sort_column
    Board.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end
end