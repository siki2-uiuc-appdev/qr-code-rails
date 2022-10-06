class SolutionsController < ApplicationController
  def wifi_code
    @network_name = params.fetch("ssid")
    @network_password = params.fetch("pw")

    text_to_encode = "WIFI:T:WPA;S:#{@network_name};P:#{@network_password};;"

    qrcode = RQRCode::QRCode.new(text_to_encode)

    @svg = qrcode.as_svg

    render({ :template => "solutions/wifi.html.erb" })
  end
end
