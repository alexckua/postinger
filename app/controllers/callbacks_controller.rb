class CallbacksController < Devise::OmniauthCallbacksController
  def facebook
    @user = User.from_facebook(auth_hash)
    sign_in_and_redirect @user
  end

  def twitter
    @user = User.from_twitter(auth_hash)
    sign_in_and_redirect @user
  end

  def vkontakte
    @user = User.from_vk(auth_hash)
    sign_in_and_redirect @user
  end

  private

  def auth_hash
    request.env["omniauth.auth"] 
  end
end
