module Admin
  class QuestionsController < BaseController
    before_action :set_question, only: %i[show edit update destroy]
    before_action :set_level, only: %i[index show update]
    # before_action :set_question_select

    def index
      @questions = @level.questions
      # Kaminari10件ずつ表示
      @questions = @questions.page(params[:page]).per(10)
    end

    def show
      # @quesiton = Question.new(question_params)
    end

    def new
      @question = Question.new
    end

    def edit
      # 4回newしてanswerの枠を四つにしている
      # ＃TODO: 増やしていく方法も考える
      @question_selects = @question.question_selects

      if @question_selects.size >= 4
        render 'edit'
      else
        4.times { @question_selects.new }
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


    # def create
    #   @question = Question.new(question_params)

    #   respond_to do |format|
    #     if @question.save
    #       format.html { redirect_to @question, notice: 'Question was successfully created.' }
    #       format.json { render :show, status: :created, location: @question }
    #     else
    #       format.html { render :new }
    #       format.json { render json: @question.errors, status: :unprocessable_entity }
    #     end
    #   end
    # end
    private
    def set_question
      @question = Question.find(params[:id])
    end

    # def set_question_select
    #   @question_select = QuestionSelect.find(params[:id])
    # end

    def set_level
      @level = Level.find(params[:level_id])
    end


    def question_params
      params.require(:question)
            .permit(:id, :level_id, :question_num, :content,
                    question_selects_attributes: %i[id question_id content answer])
    end

  end
end