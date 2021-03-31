module Admin
  class BaseController < ApplicationController
    # 一時コメントアウト
    # ログインしている者のみ認証
    # before_action :authenticate_user!

    layout 'admin'

    private

    # 一時コメントアウト
    # def require_user_role
    #   return if current_user.user?

    #   redirect_to default_url
    # end
  end
end
