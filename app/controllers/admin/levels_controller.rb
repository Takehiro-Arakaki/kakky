module Admin
  class LevelsController < ApplicationController
    # ログインしている者のみ認証
    before_action :authenticate_sysadmin!

    def index
      @levels = Level.all
    end

    private
      def level_params
        params.require(:level).permit(:level)
      end
  end
end