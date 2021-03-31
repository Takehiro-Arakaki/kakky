module Ruby
  class LevelsController < BaseController

    def index
      @levels = Level.course_of(1)
    end

  end
end