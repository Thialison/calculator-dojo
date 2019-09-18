require 'appium_lib'
require 'cucumber'
require 'rspec/expectations'

def caps
  { caps: { deviceName: 'MotoOne',
      platformName: 'Android',
      automationName: 'UiAutomator2',
      app: File.join(File.dirname(__FILE__), 'calculator.apk')
    }
  }
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object

Before { start_driver }
After { driver_quit }