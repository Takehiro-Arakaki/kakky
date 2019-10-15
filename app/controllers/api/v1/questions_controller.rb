module Api
  module V1
    class QuestionsController < ApiController

      before_action :set_question, only: [:show]

      def index
        questions = Question.select(:content)
        render json: questions
      end

      def show
        render json: @question
      end

      private

        def set_question
          @question = Question.find(params[:id])
        end
    end
  end
end