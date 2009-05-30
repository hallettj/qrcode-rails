ActionController::Routing::Routes.draw do |map|  
  map.root :controller => "qrcode", :action => "help"
  map.connect 'help', :controller => "qrcode", :action => "help"
  map.connect 'preview', :controller => "qrcode", :action => "preview"
  map.connect 'create', :controller => "qrcode", :action => "create"
  map.connect 'images/qrcode/:md5.png', :controller => "qrcode", :action => "image"
  map.connect 'recent.:format', :controller => "qrcode", :action => "recent"
end
