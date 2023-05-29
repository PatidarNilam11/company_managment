class ApplicationController < ActionController::Base
  
  def after_sign_in_path_for(resource)
    root_path
  end
    
  def after_sign_out_path_fo
     root_url("localhost:3000", allow_other_host: true)
  end
  
end
