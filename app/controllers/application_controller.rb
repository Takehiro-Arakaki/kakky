class ApplicationController < ActionController::Base
  # ログイン後の遷移
  def after_sign_in_path_for(resource)
    admin_levels_path
  end
end
