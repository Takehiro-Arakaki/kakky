module Admin
  module Info
    class LevelsController < BaseController

      def index
        @levels = Level.all
      end

    end
  end
end