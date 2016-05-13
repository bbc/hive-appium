require 'appium'

module HiveAppium
  class Ios < Appium
   
    def start
     self.serial = @options.udid || ENV['DEVICE_TARGET']
     self.start_appium
     start_webkit_proxy
    end

    def start_webkit_proxy
     command = "ios_webkit_debug_proxy -c #{@device}:27753 -d > #{@log_dir}/ios_webkit_debug_proxy.log 2>&1 &" 
     self.execute command
    end

  end
end