class InfosController < ApplicationController
  before_action :set_target_board, only: %i[show edit update destroy]

  def index
    @infos = Info.all
    @infos = @infos.page(params[:page]).order('created_at DESC')
  end

  def new
    @info = Info.new(flash[:info])
  end

  def create
    info = Info.new(info_params)

    url = params[:info][:youtube_url]
    url = url.last(11)
    info.youtube_url = url

    if info.save
      flash[:notice] = "「#{info.title}」を作成しました"
      redirect_to info
    else
      redirect_to new_info_path, flash: {
        info: info,
        error_messages: info.errors.full_messages
      }
    end
  end

  def show
  end

  def edit
  end

  def update
    @info.update(info_params)
    redirect_to @info
  end

  def destroy
    @info.delete
    redirect_to infos_path, flash: { notice: "「#{@info.title}」が削除されました" }
  end

  private

  def info_params
    params.require(:info).permit(:name, :title, :youtube_url, :body)
  end

  def set_target_board
    @info = Info.find(params[:id])
  end
end