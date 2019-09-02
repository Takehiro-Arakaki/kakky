module Admin
  class LevelsController < ApplicationController

    def index
      @levels = Level.all
      # @levels = Level.find_by(name: params[:name])
      # @levels = @levels.where("id like ?", "%#{params[:q]}%").or(@levels.where("name like ?", "%#{params[:q]}%"))
    end

    private
      # Never trust parameters from the scary internet, only allow the white list through.
      def level_params
        params.require(:level).permit(:level)
      end
  end
end