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
    s.summary          = 'Categories for Cocoa.'
    s.homepage         = 'https://github.com/ColinHwang/CHCategories'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'ColinHwang' => 'chwang7158@gmail.com' }
    s.source           = { :git => 'https://github.com/ColinHwang/CHCategories.git', :tag => s.version.to_s }
    s.ios.deployment_target = '8.0'
    s.public_header_files = 'CHCategories/Classes/CHCategories.h'
    s.source_files = 'CHCategories/Classes/CHCategories.h'
    s.frameworks = 'UIKit', 'Foundation', 'QuartzCore', 'CoreGraphics'
    s.requires_arc = true
    
    # Foundation
    s.subspec 'Foundation' do |foundation|
        
        # NSValue
        foundation.subspec 'NSValue' do |nsvalue|
            # NSValue+CHBase
            nsvalue.subspec 'NSValue+CHBase' do |nsvalue_chbase|
                nsvalue_chbase.frameworks = 'CoreGraphics'
                nsvalue_chbase.source_files = 'CHCategories/Classes/Foundation/NSValue/NSValue+CHBase.{h,m}'
            end
        end
    end
end
