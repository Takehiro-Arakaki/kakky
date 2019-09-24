module Player
  class LevelsController < BaseController

    def index
      @levels = Level.all
    end

  end
end