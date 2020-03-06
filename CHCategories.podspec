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
        
        # NSCharacterSet
        foundation.subspec 'NSCharacterSet' do |nscharacterset|
            # NSCharacterSet+CHBase
            nscharacterset.subspec 'NSCharacterSet+CHBase' do |nscharacterset_chbase|
                nscharacterset_chbase.source_files = 'CHCategories/Classes/Foundation/NSCharacterSet/NSCharacterSet+CHBase.{h,m}'
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
        
        # NSDate
        foundation.subspec 'NSDate' do |nsdate|
            # NSDate+CHBase
            nsdate.subspec 'NSDate+CHBase' do |nsdate_chbase|
                nsdate_chbase.dependency 'CHCategories/Foundation/NSArray/NSArray+CHBase'
                nsdate_chbase.source_files = 'CHCategories/Classes/Foundation/NSDate/NSDate+CHBase.{h,m}'
            end
        end
        
        # NSDecimalNumber
        foundation.subspec 'NSDecimalNumber' do |nsdecimalNumber|
            # NSDecimalNumber+CHBase
            nsdecimalNumber.subspec 'NSDecimalNumber+CHBase' do |nsdecimalnumber_chbase|
                nsdecimalnumber_chbase.source_files = 'CHCategories/Classes/Foundation/NSDecimalNumber/NSDecimalNumber+CHBase.{h,m}'
            end
        end
        
        # NSDictionary
        foundation.subspec 'NSDictionary' do |nsdictionary|
            # NSDictionary+CHBase
            nsdictionary.subspec 'NSDictionary+CHBase' do |nsdictionary_chbase|
                nsdictionary_chbase.dependency 'CHCategories/Foundation/NSData/NSData+CHBase'
                nsdictionary_chbase.dependency 'CHCategories/Foundation/NSNumber/NSNumber+CHBase'
                nsdictionary_chbase.source_files = 'CHCategories/Classes/Foundation/NSDictionary/NSDictionary+CHBase.{h,m}'
            end
        end
        
        # NSFileManager
        foundation.subspec 'NSFileManager' do |nsfilemanager|
            # NSFileManager+CHBase
            nsfilemanager.subspec 'NSFileManager+CHBase' do |nsfilemanager_chbase|
                nsfilemanager_chbase.source_files = 'CHCategories/Classes/Foundation/NSFileManager/NSFileManager+CHBase.{h,m}'
            end
        end
        
        # NSIndexPath
        foundation.subspec 'NSIndexPath' do |nsindexpath|
            # NSIndexPath+CHBase
            nsindexpath.subspec 'NSIndexPath+CHBase' do |nsindexpath_chbase|
                nsindexpath_chbase.source_files = 'CHCategories/Classes/Foundation/NSIndexPath/NSIndexPath+CHBase.{h,m}'
            end
        end
        
        # NSJSONSerialization
        foundation.subspec 'NSJSONSerialization' do |nsjsonserialization|
            # NSJSONSerialization+CHBase
            nsjsonserialization.subspec 'NSJSONSerialization+CHBase' do |nsjsonserialization_chbase|
                nsjsonserialization_chbase.source_files = 'CHCategories/Classes/Foundation/NSJSONSerialization/NSJSONSerialization+CHBase.{h,m}'
            end
        end
        
        # NSKeyedArchiver
        foundation.subspec 'NSKeyedArchiver' do |nskeyedarchiver|
            # NSKeyedArchiver+CHBase
            nskeyedarchiver.subspec 'NSKeyedArchiver+CHBase' do |nskeyedarchiver_chbase|
                nskeyedarchiver_chbase.source_files = 'CHCategories/Classes/Foundation/NSKeyedArchiver/NSKeyedArchiver+CHBase.{h,m}'
            end
        end
        
        # NSNumber
        foundation.subspec 'NSNumber' do |nsnumber|
            # NSNumber+CHBase
            nsnumber.subspec 'NSNumber+CHBase' do |nsnumber_chbase|
                nsnumber_chbase.source_files = 'CHCategories/Classes/Foundation/NSNumber/NSNumber+CHBase.{h,m}'
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
