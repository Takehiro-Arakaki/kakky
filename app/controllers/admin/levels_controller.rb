module Admin
  class LevelsController < BaseController

    def index
      @levels = Level.all
    end

    private
      def level_params
        params.require(:level).permit(:level)
      end
  end
end