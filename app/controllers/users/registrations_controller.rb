# frozen_string_literal: true
module Users
  class RegistrationsController < Devise::RegistrationsController
    # before_action :configure_sign_up_params, only: [:create]
    # before_action :configure_account_update_params, only: [:update]

    # 新規作成時アカウントが切り替わりredirectしてしまうので、ログイン中でもアカウント作成できるような設定
    prepend_before_action :require_no_authentication, only: %i[cancel]
    prepend_before_action :authenticate_scope!, only: %i[new, create]

    # 管理者ユーザーしかアカウント作成できないようにする
    before_action :check_admin, only: %i[new, create]
    # before_action :guard_action!, only: %i[edit update destroy]

    # GET /resource/sign_up
    # def new
    #   super
    # end

    # POST /resource
    # def create
    #   super
    # end

    # GET /resource/edit
    # def edit
    #   super
    # end

    # PUT /resource
    # def update
    #   super
    # end

    # DELETE /resource
    # def destroy
    #   super
    # end

    # GET /resource/cancel
    # Forces the session data which is usually expired after sign
    # in to be expired now. This is useful if the user wants to
    # cancel oauth signing in/up in the middle of the process,
    # removing all OAuth session data.
    # def cancel
    #   super
    # end

    # protected

    # If you have extra params to permit, append them to the sanitizer.
    # def configure_sign_up_params
    #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
    # end

    # If you have extra params to permit, append them to the sanitizer.
    # def configure_account_update_params
    #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
    # end

    # The path used after sign up.
    # def after_sign_up_path_for(resource)
    #   super(resource)
    # end

    # The path used after sign up for inactive accounts.
    # def after_inactive_sign_up_path_for(resource)
    #   super(resource)
    # end

    private

    # 管理者のアカウントをedit update destroyをしたときにエラーを発生させる
    # def guard_action!
    #   raise ActionController::RoutingError, 'NOT FOUND'
    # end

  end
end
