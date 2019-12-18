module Admin
  module Ruby
    class BaseController < ApplicationController
      # ログインしている者のみ認証
      before_action :authenticate_user!

      layout 'admin'

      private

      def require_user_role
        return if current_user.user?

        redirect_to default_url
      end
    end
  end
end
