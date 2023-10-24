
platform :ios, '14.0'
source 'https://github.com/CocoaPods/Specs.git'
#source 'https://github.com/tuya/tuya-pod-specs.git'
source 'git@github.com:tuya/tuya-private-specs.git'

def default_pods
  pod 'SmartLivingSDK', :path => '../smart-living-app-v2-ios/smart-living-sdk-ios'
  pod "ThingSmartCryption", :path =>'./ios_core_sdk'
  pod 'Wormholy'
end

target 'SDKDemoApp' do
  use_frameworks!

  default_pods
end


post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '14.0'
      config.build_settings['ENABLE_BITCODE'] = 'NO'
      if config.build_settings['WRAPPER_EXTENSION'] == 'bundle'
        config.build_settings['DEVELOPMENT_TEAM'] = 'UP866J542Z'
      end
    end
  end
end
