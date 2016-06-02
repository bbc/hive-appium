require 'appium'
require 'hive_appium/android'
require 'hive_appium//ios'
require 'ostruct'

describe 'Check options to start Appium Server' do

let(:appium) { Appium.new(OpenStruct.new)}
let(:android) { HiveAppium::Android.new(OpenStruct.new)}
let(:ios) { HiveAppium::Ios.new(OpenStruct.new)}

  describe 'Appium' do
    it 'should have default appium port' do
      expect(appium.port).to eq '4723'
    end

    it 'should have default log directory set to current directory' do 
      expect(appium.log_dir).to eq '.'
    end
  end

  describe 'Android' do
    it 'should be kind of Appium' do
      expect(android).to be_kind_of Appium
    end

    it 'should have default Chromedriver and Bootstrap port' do 
      expect(android.bp).to eq '4724'
      expect(android.cp).to eq '9515'
    end
  end

  describe 'Ios' do
    it 'should be kind of Appium' do
        expect(ios).to be_kind_of Appium
    end

    it 'should have default ios_webkit_debug_proxy_port' do
        expect(ios.ios_webkit_port).to eq '27753'
    end
  end
  
end
