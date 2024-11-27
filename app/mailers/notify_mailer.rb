class NotifyMailer < ApplicationMailer
  default from: 'no-reply@example.com'  # 送信元メールアドレス

  # メール送信メソッド
  def buy_email(user)
    @user = user  # メール送信時に必要な情報をインスタンス変数に設定
    @url  = 'http://example.com/login'  # 例えばログイン用のURLなど

    mail(to: @user.email, subject: 'Welcome to Our Application')  # 送信先と件名を設定
  end
end
