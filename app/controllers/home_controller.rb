class HomeController < ApplicationController

    def index
    @level = Level.find(2)
    end

end
