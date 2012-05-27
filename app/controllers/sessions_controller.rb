class SessionsController < Devise::SessionsController
  layout "out_page"
  def create
    resource = warden.authenticate!(:scope => resource_name, :recall => "#{controller_path}#new")
    sign_in(resource_name, resource)
    respond_to do |format|
      format.html { redirect_to after_sign_in_path_for(resource) }
      format.json { render :status => '201', :json => resource.as_json(:only => [:login, :email, :private_token]) }
    end
  end
end