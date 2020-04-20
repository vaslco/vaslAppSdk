#
# Be sure to run `pod lib lint vaslAppSdk.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'vaslAppSdk'
  s.version          = '0.7.0'
  s.swift_version    = '5'
  s.summary          = 'vaslAppSdk is a Framework for connectin to Mbas-Vasl service '

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'this framework belongs to Vasl Company and you can use it for connecting to your service on vaslapp.com'

  s.homepage         = 'https://github.com/vaslco/vaslAppSdk.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'vaslappco@gmail.com' => 'Ali Shatergholi' }
  s.source           = { :git => 'https://github.com/vaslco/vaslAppSdk.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.ios.deployment_target = '10.0'

  s.source_files = 'vaslAppSdk/Classes/**/*'

  # s.resource_bundles = {
  #   'vaslAppSdk' => ['vaslAppSdk/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'SwiftProtobuf'
  s.dependency 'Alamofire' , '4.9.1'
end
