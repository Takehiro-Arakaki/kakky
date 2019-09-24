class UsersController < ApplicationController
  before_action :check_admin

  # def user_params
  #   params.fetch(:user, {}).permit(ここに変更したいカラムの名前を書いていく)
  # end

end
