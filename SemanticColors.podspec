#
# Be sure to run `pod lib lint SemanticColors.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SemanticColors'
  s.version          = '0.1.0'
  s.summary          = 'iOS 13 Dynamic colors backport for old ios system.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Are you working on dark mode for ios? This year Apple prepared nice dynamic system colors, but this api available only for ios13+. This is a port, that you could with older ios. Interested? just try our demo project 
                       DESC

  s.homepage         = 'https://github.com/pingwinator/SemanticColors'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Vasyl Liutikov' => 'pingwinator@gmail.com' }
  s.source           = { :git => 'https://github.com/pingwinator/SemanticColors.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/pingwinator'

  s.ios.deployment_target = '8.0'

  s.source_files = 'SemanticColors/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SemanticColors' => ['SemanticColors/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
