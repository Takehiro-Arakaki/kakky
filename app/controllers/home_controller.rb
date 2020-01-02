class HomeController < ApplicationController

	def index
		if flash.present?
			flash.now[:alert] = 'Log out！！'
		end
	end

	def select_learn
	end

end
