require 'appium'

module HiveAppium
  class Android < Appium

    def start
     self.serial = @options.udid || ENV['ADB_DEVICE_ARG']
     self.start_appium
    end

  end
end