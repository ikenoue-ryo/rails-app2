class BoardsController < ApplicationController
  before_action :set_target_board, only: %i[show edit update destroy]

  def index
    @boards = params[:tag_id].present? ? Tag.find(params[:tag_id]).boards : Board.all
    @boards = @boards.page(params[:page]).order('created_at DESC')
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
    params.require(:board).permit(:name, :furigana, :title, :body, tag_ids: []).merge(user_id: current_user.id)
  end

  def set_target_board
    @board = Board.find(params[:id])
  end
end