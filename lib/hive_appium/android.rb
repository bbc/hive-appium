require 'appium'

module HiveAppium
  class Android < Appium

    attr_accessor :cp, :bp

    def initialize options
     self.serial = options.udid || ENV['ADB_DEVICE_ARG']
     self.cp = options.chromedriver_port || ENV['CHROMEDRIVER_PORT'] || '9515'
     self.bp = options.bootstrap_port || ENV['BOOTSTRAP_PORT'] || '4724'
     super options
    end

    def start
     @options.params = "" if !@options.params
     @options.params << " --bootstrap-port #{@bp} --chromedriver-port #{@cp}"
     self.start_appium
    end

  end
end