module Admin
  class QuestionsController < BaseController
    before_action :set_question, only: %i[show edit update destroy]
    before_action :set_level, only: %i[index show]
    # before_action :set_levels

    def index
      @questions = @level.questions
      # Kaminari10件ずつ表示
      @questions = @questions.page(params[:page]).per(10).order(id: :ASC)
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
        redirect_to admin_level_questions_url(@question),
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

    def set_levels
      @levels = Level.all
    end

    def question_params
      params.require(:question).permit(:id, :level_id, :question_num, :content)
    end

  end
end