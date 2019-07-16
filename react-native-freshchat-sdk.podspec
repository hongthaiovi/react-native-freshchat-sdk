require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = 'react-native-freshchat-sdk'
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = 'react-native-freshchat-sdk'
  s.platform     = :ios, "9.0"
  s.homepage     = 'https://github.com/evandavid/react-native-freshchat-sdk'

  s.source       = { :git => "https://github.com/evandavid/react-native-freshchat-sdk.git", :tag => "v#{s.version}" }
  s.source_files = "ios/*.{h,m}"

  s.dependency 'React'
  s.dependency 'FreshchatSDK', '2.5.1'
end
