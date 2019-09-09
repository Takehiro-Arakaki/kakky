module Admin
  class LevelsController < ApplicationController

    def index
      @levels = Level.all
    end

    private
      def level_params
        params.require(:level).permit(:level)
      end
  end
end