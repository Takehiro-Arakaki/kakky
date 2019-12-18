class ApplicationController < ActionController::Base
  # deviceにてログイン後の遷移
  def after_sign_in_path_for(resource)
    home_select_set_path
  end

  def is_disabled
    if current_user.status == 'disabled'
      # sessionを削除
      user_session = nil
      flash[:alert] = "アカウントが無効です"
    end
  end

  private
  # current_userのroleカラムがadmin以外の場合rootにリダイレクト
  def check_admin
    if user_signed_in?
      if current_user.role != 'admin'
        redirect_to default_url
        flash[:notice] = "管理者のみ閲覧できます"
      end
    end
  end

end
