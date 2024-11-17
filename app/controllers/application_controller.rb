class ApplicationController < ActionController::Base

  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path # Or any other path
  end
end
