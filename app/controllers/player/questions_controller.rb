module Player
  class QuestionsController < BaseController

    before_action :set_level, only: %i[index show update incorrect correct]
    before_action :set_question, only: %i[show result incorrect correct]


    # GET /player/levels/:level_id/questions
    def index
      @questions = @level.questions
      # Kaminari10件ずつ表示
      @questions = @questions.page(params[:page]).per(10)
    end

    def result
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
      @level = Level.find_by(params[:name])
    end

    def set_question
      @question = Question.find(params[:id])
    end
  end
end