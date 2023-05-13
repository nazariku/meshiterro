class ApplicationController < ActionController::Base
  
  #devise利用の機能が使われる前にconfigure_permitted_parametersメソッドを実行する
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  #サインインでaboutページへ遷移（せんい）する
  def after_sign_in_path_for(resource)
    about_path
  end
  
  def after_sign_out_path_for(resource)
    about_path
  end
  
  protected
  
  def configure_permitted_parameters
    #devise_parameter_sanitizer.permitメソッド、sign_upの際に、nameのデータ操作を許可
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
