#
# Be sure to run `pod lib lint CHCategories.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CHCategories'
  s.version          = '0.0.1'
  s.summary          = 'Categories for Foundation and UIKit.'
  s.homepage         = 'https://github.com/ColinHwang/CHCategories'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ColinHwang' => 'chwang7158@gmail.com' }
  s.source           = { :git => 'https://github.com/ColinHwang/CHCategories.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'

  s.source_files = 'CHCategories/Classes/**/*'
  
  s.frameworks = 'UIKit', 'Foundation', 'QuartzCore', 'CoreGraphics'
  s.requires_arc = true
end
