require 'appium'

module HiveAppium
  class Ios < Appium

    attr_accessor :ios_webkit_port

    def initialize(options)
     self.serial = options.udid || ENV['DEVICE_TARGET']
     self.ios_webkit_port = options.ios_webkig_debug_proxy_port || '27753'
     super options
    end
   
    def start
     @options.params = "" if !@options.params
     @options.params << " --tmp /tmp/ios/#{rand(1000000)}"
     self.start_appium
     start_webkit_proxy
    end

    def start_webkit_proxy
     command = "ios_webkit_debug_proxy -c #{@serial}:#{@ios_webkit_port} -d > #{@log_dir}/ios_webkit_debug_proxy.log 2>&1 &" 
     self.execute command
    end

  end
end