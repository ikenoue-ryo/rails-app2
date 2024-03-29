class BoardsController < ApplicationController
  before_action :set_target_board, only: %i[show edit update destroy]
  before_action :login_check
  helper_method :sort_column, :sort_direction

  def index
    @boards = params[:tag_id].present? ? Tag.find(params[:tag_id]).boards : Board.all
    @boards = @boards.page(params[:page]).order('created_at DESC')

    @boards_order = Board.all.order(sort_column + ' ' + sort_direction)
    @booking_count = Board.all.count(:start_time)
    @all_count = Board.all.count(:id)
    @un_booking_count = @all_count - @booking_count
  end

  def new
    @board = Board.new(flash[:board])
  end

  def create
    board = Board.new(board_params)
    if board.save
      flash[:notice] = "「#{board.title}」を作成しました"
      redirect_to board
    else
      redirect_to new_board_path, flash: {
        board: board,
        error_messages: board.errors.full_messages
      }
    end
  end

  def show
    @comment = Comment.new(board_id: @board.id)
    @comment = @board.comments.new
    @user = User.find_by(id: @board.user_id)
  end

  def edit
  end

  def update
    @board.update(board_params)
    redirect_to @board
  end

  def destroy
    @board.destroy
    redirect_to boards_path, flash: { notice: "「#{@board.title}」が削除されました" }
  end

  private

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