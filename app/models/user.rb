class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable


  # # active_for_authentication?メソッドはログインする際に何かしらの制約をつけるメソッド
  # # is_enabled?メソッドで上書きし、戻り値がfalseの場合に :status_disabledというエラーメッセージを表示。
  # def active_for_authentication?
  #   super && is_enabled?
  # end

  # def inactive_message
  #   is_enabled? ? super : :status_disabled
  # end

  # def is_enabled?
  #   self.status == 'enabled'
  # end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
