class ApplicationController < ActionController::Base
  def homepage
    render({ :template => "my_templates/homepage.html.erb" })
  end

  def text_qr
    @user_text = params.fetch("content")

    @qrcode = RQRCode::QRCode.new(@user_text)

    render({ :template => "my_templates/qr_for_text.html.erb"})
  end

  def url_qr
    @user_url = params.fetch("page")

    @qrcode = RQRCode::QRCode.new(@user_url)

    render({ :template => "my_templates/qr_for_url.html.erb"})
  end

  def wifi_qr
    network_name = params.fetch("ssid")
    password = params.fetch("pw")

    query_string = "WIFI:T:WPA;S:#{network_name};P:#{password};;"

    @qrcode = RQRCode::QRCode.new(query_string)

    render({ :template => "my_templates/qr_for_wifi.html.erb"} )
  end

  def sms_qr
    phone_number = params.fetch("phone")
    text_message = params.fetch("message")

    query_string = "SMSTO:+#{phone_number}:#{text_message}"

    @qrcode = RQRCode::QRCode.new(query_string)

    render({ :template => "my_templates/qr_for_sms.html.erb"})
  end
end
