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
        
        # NSAttributedString
        foundation.subspec 'NSAttributedString' do |nsattributedstring|
            # NSAttributedString+CHBase
            nsattributedstring.subspec 'NSAttributedString+CHBase' do |nsattributedstring_chbase|
                nsattributedstring_chbase.frameworks = 'UIKit', 'CoreText'
                nsattributedstring_chbase.dependency 'CHCategories/Foundation/NSString/NSString+CHBase'
                nsattributedstring_chbase.dependency 'CHCategories/Foundation/NSValue/NSValue+CHBase'
                nsattributedstring_chbase.source_files = 'CHCategories/Classes/Foundation/NSAttributedString/NSAttributedString+CHBase.{h,m}'
            end
            
            # NSAttributedString+CHCreation
            nsattributedstring.subspec 'NSAttributedString+CHCreation' do |nsattributedstring_chcreation|
                nsattributedstring_chcreation.frameworks = 'UIKit'
                nsattributedstring_chcreation.dependency 'CHCategories/Foundation/NSAttributedString/NSAttributedString+CHBase'
                nsattributedstring_chcreation.dependency 'CHCategories/Foundation/NSValue/NSValue+CHBase'
                nsattributedstring_chcreation.source_files = 'CHCategories/Classes/Foundation/NSAttributedString/NSAttributedString+CHCreation.{h,m}'
            end
                        
            # NSAttributedString+CHParagraphStyleAttributes
            nsattributedstring.subspec 'NSAttributedString+CHParagraphStyleAttributes' do |nsattributedstring_chparagraphstyleattributes|
                nsattributedstring_chparagraphstyleattributes.frameworks = 'UIKit'
                nsattributedstring_chparagraphstyleattributes.dependency 'CHCategories/Foundation/NSAttributedString/NSAttributedString+CHBase'
                nsattributedstring_chparagraphstyleattributes.source_files = 'CHCategories/Classes/Foundation/NSAttributedString/NSAttributedString+CHParagraphStyleAttributes.{h,m}'
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
        
        # NSNotificationCenter
        foundation.subspec 'NSNotificationCenter' do |nsnotificationcenter|
            # NSNotificationCenter+CHBase
            nsnotificationcenter.subspec 'NSNotificationCenter+CHBase' do |nsnotificationcenter_chbase|
                nsnotificationcenter_chbase.source_files = 'CHCategories/Classes/Foundation/NSNotificationCenter/NSNotificationCenter+CHBase.{h,m}'
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
            
            # NSObject+CHDataBind
            nsobject.subspec 'NSObject+CHDataBind' do |nsobject_chdatabind|
                nsobject_chdatabind.dependency 'CHCategories/Foundation/NSNumber/NSNumber+CHBase'
                nsobject_chdatabind.dependency 'CHCategories/Foundation/NSObject/NSObject+CHBase'
                nsobject_chdatabind.source_files = 'CHCategories/Classes/Foundation/NSObject/NSObject+CHDataBind.{h,m}'
            end
            
            # NSObject+CHKeyValueCoding
            nsobject.subspec 'NSObject+CHKeyValueCoding' do |nsobject_chkeyvaluecoding|
                nsobject_chkeyvaluecoding.dependency 'CHCategories/Foundation/NSNumber/NSNumber+CHBase'
                nsobject_chkeyvaluecoding.source_files = 'CHCategories/Classes/Foundation/NSObject/NSObject+CHKeyValueCoding.{h,m}'
            end
            
            # NSObject+CHKeyValueObserving
            nsobject.subspec 'NSObject+CHKeyValueObserving' do |nsobject_chkeyvalueobserving|
                nsobject_chkeyvalueobserving.dependency 'CHCategories/Foundation/NSObject/NSObject+CHBase'
                nsobject_chkeyvalueobserving.source_files = 'CHCategories/Classes/Foundation/NSObject/NSObject+CHKeyValueObserving.{h,m}'
            end
            
            # NSObject+CHMultipleDelegates
            nsobject.subspec 'NSObject+CHMultipleDelegates' do |nsobject_chmultipledelegates|
                nsobject_chmultipledelegates.dependency 'CHCategories/Foundation/NSObject/NSObject+CHBase'
                nsobject_chmultipledelegates.dependency 'CHCategories/Foundation/NSPointerArray/NSPointerArray+CHBase'
                nsobject_chmultipledelegates.source_files = 'CHCategories/Classes/Foundation/NSObject/NSObject+CHMultipleDelegates.{h,m}'
            end
        end
        
        # NSParagraphStyle
        foundation.subspec 'NSParagraphStyle' do |nsparagraphstyle|
            # NSParagraphStyle+CHBase
            nsparagraphstyle.subspec 'NSParagraphStyle+CHBase' do |nsparagraphstyle_chbase|
                nsparagraphstyle_chbase.frameworks = 'CoreText'
                nsparagraphstyle_chbase.source_files = 'CHCategories/Classes/Foundation/NSParagraphStyle/NSParagraphStyle+CHBase.{h,m}'
            end
        end
        
        # NSPointerArray
        foundation.subspec 'NSPointerArray' do |nspointerarray|
            # NSPointerArray+CHBase
            nspointerarray.subspec 'NSPointerArray+CHBase' do |nspointerarray_chbase|
                nspointerarray_chbase.source_files = 'CHCategories/Classes/Foundation/NSPointerArray/NSPointerArray+CHBase.{h,m}'
            end
        end
        
        # NSString
        foundation.subspec 'NSString' do |nsstring|
            # NSString+CHBase
            nsstring.subspec 'NSString+CHBase' do |nsstring_chbase|
                nsstring_chbase.dependency 'CHCategories/Foundation/NSCharacterSet/NSCharacterSet+CHBase'
                nsstring_chbase.dependency 'CHCategories/Foundation/NSData/NSData+CHBase'
                nsstring_chbase.dependency 'CHCategories/Foundation/NSDecimalNumber/NSDecimalNumber+CHBase'
                nsstring_chbase.dependency 'CHCategories/Foundation/NSNumber/NSNumber+CHBase'
                nsstring_chbase.source_files = 'CHCategories/Classes/Foundation/NSString/NSString+CHBase.{h,m}'
            end
            
            # NSString+CHCheck
            nsstring.subspec 'NSString+CHCheck' do |nsstring_chcheck|
                nsstring_chcheck.dependency 'CHCategories/Foundation/NSString/NSString+CHBase'
                nsstring_chcheck.dependency 'CHCategories/Foundation/NSString/NSString+CHRegularExpression'
                nsstring_chcheck.dependency 'CHCategories/Foundation/NSDictionary/NSDictionary+CHBase'
                nsstring_chcheck.source_files = 'CHCategories/Classes/Foundation/NSString/NSString+CHCheck.{h,m}'
            end
            
            # NSString+CHChinese
            nsstring.subspec 'NSString+CHChinese' do |nsstring_chchinese|
                nsstring_chchinese.dependency 'CHCategories/Foundation/NSString/NSString+CHRegularExpression'
                nsstring_chchinese.source_files = 'CHCategories/Classes/Foundation/NSString/NSString+CHChinese.{h,m}'
            end
            
            # NSString+CHCrypto
            nsstring.subspec 'NSString+CHCrypto' do |nsstring_chcrypto|
                nsstring_chcrypto.dependency 'CHCategories/Foundation/NSData/NSData+CHCrypto'
                nsstring_chcrypto.source_files = 'CHCategories/Classes/Foundation/NSString/NSString+CHCrypto.{h,m}'
            end
            
            # NSString+CHDrawing
            nsstring.subspec 'NSString+CHDrawing' do |nsstring_chdrawing|
                nsstring_chdrawing.frameworks = 'UIKit', 'CoreGraphics'
                nsstring_chdrawing.source_files = 'CHCategories/Classes/Foundation/NSString/NSString+CHDrawing.{h,m}'
            end
            
            # NSString+CHEmoji
            nsstring.subspec 'NSString+CHEmoji' do |nsstring_chemoji|
                nsstring_chemoji.dependency 'CHCategories/Foundation/NSString/NSString+CHBase'
                nsstring_chemoji.dependency 'CHCategories/Foundation/NSString/NSString+CHRegularExpression'
                nsstring_chemoji.source_files = 'CHCategories/Classes/Foundation/NSString/NSString+CHEmoji.{h,m}'
            end
            
            # NSString+CHRegularExpression
            nsstring.subspec 'NSString+CHRegularExpression' do |nsstring_chregularexpression|
                nsstring_chregularexpression.source_files = 'CHCategories/Classes/Foundation/NSString/NSString+CHRegularExpression.{h,m}'
            end
            
            # NSString+CHRoundNumberString
            nsstring.subspec 'NSString+CHRoundNumberString' do |nsstring_chroundnumberstring|
                nsstring_chroundnumberstring.dependency 'CHCategories/Foundation/NSDecimalNumber/NSDecimalNumber+CHBase'
                nsstring_chroundnumberstring.source_files = 'CHCategories/Classes/Foundation/NSString/NSString+CHRoundNumberString.{h,m}'
            end
            
            # NSString+CHTrimming
            nsstring.subspec 'NSString+CHTrimming' do |nsstring_chtrimming|
                nsstring_chtrimming.dependency 'CHCategories/Foundation/NSString/NSString+CHBase'
                nsstring_chtrimming.dependency 'CHCategories/Foundation/NSString/NSString+CHRegularExpression'
                nsstring_chtrimming.source_files = 'CHCategories/Classes/Foundation/NSString/NSString+CHTrimming.{h,m}'
            end
        end
        
        # NSTimer
        foundation.subspec 'NSTimer' do |nstimer|
            # NSTimer+CHBase
            nstimer.subspec 'NSTimer+CHBase' do |nstimer_chbase|
                nstimer_chbase.source_files = 'CHCategories/Classes/Foundation/NSTimer/NSTimer+CHBase.{h,m}'
            end
        end
        
        
        foundation.subspec 'NSURL' do |nsurl|
            # NSURL+CHBase
            nsurl.subspec 'NSURL+CHBase' do |nsurl_chbase|
                nsurl_chbase.source_files = 'CHCategories/Classes/Foundation/NSURL/NSURL+CHBase.{h,m}'
            end
        end
        
        # NSURLComponents
        foundation.subspec 'NSURLComponents' do |nsurlcomponents|
            # NSURLComponents+CHBase
            nsurlcomponents.subspec 'NSURLComponents+CHBase' do |nsurlcomponents_chbase|
                nsurlcomponents_chbase.source_files = 'CHCategories/Classes/Foundation/NSURLComponents/NSURLComponents+CHBase.{h,m}'
            end
        end
        
        # NSUserDefaults
        foundation.subspec 'NSUserDefaults' do |nsuserdefaults|
            # NSUserDefaults+CHBase
            nsuserdefaults.subspec 'NSUserDefaultsCHBase' do |nsuserdefaults_chbase|
                nsuserdefaults_chbase.source_files = 'CHCategories/Classes/Foundation/NSUserDefaults/NSUserDefaults+CHBase.{h,m}'
                nsuserdefaults_chbase.dependency 'CHCategories/Foundation/NSDictionary/NSDictionary+CHBase'
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
