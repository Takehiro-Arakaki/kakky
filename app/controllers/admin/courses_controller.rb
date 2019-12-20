module Admin
  class CoursesController < BaseController

    def index
      @courses = Course.all
    end

  end
end