class ApplicationController < ActionController::Base
  def render_not_found
    render :file => "#{RAILS_ROOT}/app/views/errors/not_found.html.erb",  :status => 404
  end

end
