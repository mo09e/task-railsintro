class MywordsController < ApplicationController
  before_action :set_myword, only: [:show, :edit, :update, :destroy]
  def confirm
    @myword = Myword.new(myword_params)
    render :new if @myword.invalid?
  end

  def create
    @myword = Myword.new(myword_params)
    if params[:back]
      render :new
    else
      if @myword.save
        redirect_to mywords_path, notice: "ThanksTweets!"
      else
        render :new
      end
    end
  end

  def destroy
    @myword.destroy
    redirect_to mywords_path, notice:"Deleted！"
  end

  def edit
  end

  def index
    @mywords = Myword.all
  end

  def new
    @myword = Myword.new
  end

  def show
  end

  def update
    if @myword.update(myword_params)
      redirect_to mywords_path, notice: "Edited！"
    else
      render :edit
    end
  end


  private
    def myword_params
      params.require(:myword).permit(:content)
    end
    def set_myword
      @myword = Myword.find(params[:id])
    end
end
