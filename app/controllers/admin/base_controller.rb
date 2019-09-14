module Admin
  class BaseController < ApplicationController
    # ログインしている者のみ認証
    before_action :authenticate_sysadmin!

    private

    def require_sysadmin_role
      return if current_user.sysadmin?

      redirect_to default_url
    end
  end
end
