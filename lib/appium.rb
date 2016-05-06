class Appium

  attr_accessor :serial, :port, :cp, :bp,
                :log_dir, :appium_path,
                :command

  def initialize options
   @options = options
   @log_dir = options.log_dir || ENV['HIVE_RESULTS'] || "."   
   @port = options.port || ENV['APPIUM_PORT'] || '4723'
   @cp = options.chromedriver_port || ENV['CHROMEDRIVER_PORT'] || '9515'
   @bp = options.bootstrap_port || ENV['BOOTSTRAP_PORT'] || '4724'
   @appium_path = appium_path || @options.appium_path
  end

 
  def appium_path
   path = "appium" 
   path = @options.android ? path + "-android" : path + "-ios"
   path = "#{path}@#{@options.version}" if @options.version
   return path
  end

  def path_exists? appium_path 
   paths = `echo $PATH`
   paths.split(':').each do |path|
    return true if File.exist?("#{path}/"+appium_path) || File.symlink?("#{path}/"+appium_path)  
   end
   return false
  end

  def start_default_appium
   @command << "#{@appium_path} --session-override"
  end

  def start_appium 
   raise "No symlink or file found at default paths. Refer README." if !path_exists? @appium_path
   @command = "#{@appium_path} --udid #{@serial} --port #{@port} --bootstrap-port #{@bp} --chromedriver-port #{@cp} #{@options.params}"
   add_log_dir 
   execute @command
  end

  def add_log_dir 
   @command << " > #{@log_dir}/appium.log 2>&1 &"
  end

  def execute command
   system(command)
  end
end 
