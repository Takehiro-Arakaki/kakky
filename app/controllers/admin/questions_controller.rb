class Admin::QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]
  # IDを一件ずつ編集したい時はonlyアクションで分ける
  before_action :set_level
  # レベルのパラメーターを取得


  def index
    @questions = @level.questions
    @questions = @questions.page(params[:page]).per(10).order(id: :ASC)
    #kaminari10件ずつ表示
  end
  
  def show
  end

  def new
    @question = Question.new
  end

  def edit
  end

  def create
    @question = Question.new(question_params)

    respond_to do |format|
      if @question.save
        format.html { redirect_to @question, notice: 'Question was successfully created.' }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    if @question.update(question_params)
      redirect_to admin_level_question_url(@level, @question), 
                  notice: 'Question was successfully updated.'
    else
      render :edit
    end
  end

  private
    def set_question
      @question = Question.find(params[:id])
    end

    def set_level
      @level = Level.find(params[:level_id])
    end

    def question_params
      params.require(:question).permit(:level_id, :question)
    end
end