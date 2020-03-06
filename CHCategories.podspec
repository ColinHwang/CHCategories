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
        
        # NSArray
        foundation.subspec 'NSArray' do |nsarray|
            # NSArray+CHBase
            nsarray.subspec 'NSArray+CHBase' do |nsarray_chbase|
                nsarray_chbase.dependency 'CHCategories/Foundation/NSData/NSData+CHBase'
                nsarray_chbase.dependency 'CHCategories/Foundation/NSValue/NSValue+CHBase'
                nsarray_chbase.source_files = 'CHCategories/Classes/Foundation/NSArray/NSArray+CHBase.{h,m}'
            end
        end
        
        # NSCalendar
        foundation.subspec 'NSCalendar' do |nscalendar|
            # NSCalendar+CHBase
            nscalendar.subspec 'NSCalendar+CHBase' do |nscalendar_chbase|
                nscalendar_chbase.dependency 'CHCategories/Foundation/NSObject/NSObject+CHBase'
                nscalendar_chbase.source_files = 'CHCategories/Classes/Foundation/NSCalendar/NSCalendar+CHBase.{h,m}'
            end
        end
        
        # NSData
        foundation.subspec 'NSData' do |nsdata|
            # NSData+CHBase
            nsdata.subspec 'NSData+CHBase' do |nsdata_chbase|
                nsdata_chbase.library = 'z.1.2.5'
                nsdata_chbase.source_files = 'CHCategories/Classes/Foundation/NSData/NSData+CHBase.{h,m}'
            end
            
            # NSData+CHCrypto
            nsdata.subspec 'NSData+CHCrypto' do |nsdata_chcrypto|
                nsdata_chcrypto.library = 'z.1.2.5'
                nsdata_chcrypto.source_files = 'CHCategories/Classes/Foundation/NSData/NSData+CHCrypto.{h,m}'
            end
        end
        
        # NSObject
        foundation.subspec 'NSObject' do |nsobject|
            # NSObject+CHBase
            nsobject.subspec 'NSObject+CHBase' do |nsobject_chbase|
                nsobject_chbase.source_files = 'CHCategories/Classes/Foundation/NSObject/NSObject+CHBase.{h,m}'
            end
        end
        
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
