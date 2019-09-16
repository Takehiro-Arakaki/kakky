module Admin
  class LevelsController < BaseController

    def index
      @levels = Level.all
      if flash.present?
        flash.now[:notice] = 'Log in！！'
      end
    end

    private
      def level_params
        params.require(:level).permit(:level)
      end
  end
end