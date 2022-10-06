Rails.application.routes.draw do


  # Solutions below.

  get("/solutions/wifi", { :controller => "solutions", :action => "wifi_code" })

end
