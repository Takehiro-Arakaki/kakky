module Ruby
  class QuestionsController < BaseController

    before_action :set_level, only: %i[index show update result incorrect correct]
    before_action :set_question, only: %i[show result incorrect correct]


    # GET /ruby/levels/:level_id/questions
    def index
      @questions = @level.questions
      # Kaminari10件ずつ表示
      @questions = @questions.page(params[:page]).per(10)
    end

    def result
      question_select = QuestionSelect.find(params[:question_select_id])
      # 正解、不正解で遷移先を変更する
      if question_select.answer
        redirect_to correct_ruby_level_question_url(@level, @question)
      else
        redirect_to incorrect_ruby_level_question_url(@level, @question)
      end

    end

    def correct; end


    def incorrect; end


    # GET /questions/1
    def show
    end

    private

    def set_levels
      @levels = Level.all
    end

    def set_level
      @level = Level.find(params[:level_id])
    end

    def set_question
      @question = Question.find(params[:id])
    end


  end
end