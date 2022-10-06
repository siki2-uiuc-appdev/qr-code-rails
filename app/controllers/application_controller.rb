class ApplicationController < ActionController::Base
  def homepage
    render({ :template => "my_templates/homepage.html.erb" })
  end

  def text_qr
    render({ :template => "my_templates/qr_for_text.html.erb"})
  end
end
