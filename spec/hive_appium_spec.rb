require 'appium'
require 'hive_appium/android'
require 'hive_appium//ios'
require 'ostruct'

describe 'Check options to start Appium Server' do

let(:appium) { Appium.new(OpenStruct.new)}
let(:android) { HiveAppium::Android.new(OpenStruct.new)}
let(:ios) { HiveAppium::Ios.new(OpenStruct.new)}

  describe 'Appium' do
    it 'should have default Appium, Chromedriver and Bootstrap ports' do
      expect(appium.port).to eq '4723'
      expect(appium.bp).to eq '4724'
      expect(appium.cp).to eq '9515'
    end
    
    it 'should have default log directory set to current directory' do 
      expect(appium.log_dir).to eq '.'
    end
  end

  describe 'Android' do
    it 'should be kind of Appium' do
      expect(android).to be_kind_of Appium
    end
  end

  describe 'Ios' do
    it 'should be kind of Appium' do
        expect(ios).to be_kind_of Appium
    end
  end
  
end
