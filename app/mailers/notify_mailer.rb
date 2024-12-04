class NotifyMailer < ApplicationMailer
  default from: 'no-reply@text-hurima.com'  # 送信元メールアドレス

  # メール送信メソッド
  def buy_email(user, post)
    @user = user 
    @url  = 'https://text-hurima-70a859267649.herokuapp.com/'  
    @post = post
    mail(to: @user.email, subject: '商品が購入されました。')  
  end

  def cancel_email(user, post)
    @user = user 
    @url  = 'https://text-hurima-70a859267649.herokuapp.com/'  
    @post = post
    mail(to: @user.email, subject: '商品がキャンセルされました。')  
  end

  def chat_email(receiver, post)
    @receiver = receiver
    @post = post
    @url  = 'https://text-hurima-70a859267649.herokuapp.com/'
    mail(to: @receiver.email, subject: '相手からチャットのコメントが来ました。')
  end
end
