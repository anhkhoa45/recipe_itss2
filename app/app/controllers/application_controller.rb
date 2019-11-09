class ApplicationController < ActionController::Base

  # rescue_from Exception, :with => :render_404

private

  def render_404(e)
    logger.debug e
    render :template => 'error_pages/404', :layout => false, :status => :not_found
  end

end
