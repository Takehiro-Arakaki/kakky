module Info
  class LevelsController < BaseController

    def index
      @levels = Level.course_of(2)
    end

  end
end