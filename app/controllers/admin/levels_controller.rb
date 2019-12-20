module Admin
  class LevelsController < BaseController

    def index
      @course = Course.find_by(id: params[:course_id])
      @levels = Level.where(course_id: params[:course_id])
    end

    private

    # def course_params
    #   params.require(:course).permit(:id)
    # end

  end
end