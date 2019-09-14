class ApplicationController < ActionController::Base
  # ログイン後の遷移
  # def after_sign_in_path_for(resource)
  #   admin_levels_path
  # end

  # # current_userのroleカラムがadmin以外の場合rootにリダイレクト
  # def check_admin
  #   if user_signed_in?
  #     if current_user.role != 'admin'
  #       redirect_to default_url
  #       flash[:notice] = "管理者のみ閲覧できます"
  #     end
  #   end
  # end

end
