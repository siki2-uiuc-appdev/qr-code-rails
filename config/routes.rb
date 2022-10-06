Rails.application.routes.draw do
  # Write your routes here. URLs to support:
  
  # /text
  get("/text", { :controller => "application", :action => "text_qr"})
  # /url
  # /wifi
  # /sms
  
  get("/", {:controller => "application", :action => "homepage"})

  # Solutions below.

  get("/solutions/text", {:controller => "solutions", :action => "text_qr"})

  get("/solutions/url", {:controller => "solutions", :action => "url_qr"})

  get("/solutions/wifi", {:controller => "solutions", :action => "wifi_qr"})

  get("/solutions/sms", {:controller => "solutions", :action => "sms_qr"})

end
