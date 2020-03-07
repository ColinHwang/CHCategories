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
    
    # UIKit
    s.subspec 'UIKit' do |uikit|
        
        # UIActivityIndicatorView
        uikit.subspec 'UIActivityIndicatorView' do |uiactivityindicatorview|
            # UIActivityIndicatorView+CHBase
            uiactivityindicatorview.subspec 'UIActivityIndicatorView+CHBase' do |uiactivityindicatorview_ch_base|
                uiactivityindicatorview_ch_base.source_files = 'CHCategories/Classes/UIKit/UIActivityIndicatorView/UIActivityIndicatorView+CHBase.{h,m}'
            end
        end
        
        # UIApplication
        uikit.subspec 'UIApplication' do |uiapplication|
            # UIApplication+CHBase
            uiapplication.subspec 'UIApplication+CHBase' do |uiapplication_ch_base|
                uiapplication_ch_base.dependency 'CHCategories/Foundation/NSObject/NSObject+CHBase'
                uiapplication_ch_base.dependency 'CHCategories/Foundation/NSString/NSString+CHBase'
                uiapplication_ch_base.dependency 'CHCategories/UIKit/UIDevice/UIDevice+CHMachineInfo'
                uiapplication_ch_base.dependency 'CHCategories/UIKit/UIScreen/UIScreen+CHBase'
                uiapplication_ch_base.source_files = 'CHCategories/Classes/UIKit/UIApplication/UIApplication+CHBase.{h,m}'
            end
        end
        
        # UIBarButtonItem
        uikit.subspec 'UIBarButtonItem' do |uibarbuttonitem|
            # UIBarButtonItem+CHBase
            uibarbuttonitem.subspec 'UIBarButtonItem+CHBase' do |uibarbuttonitem_chbase|
                uibarbuttonitem_chbase.dependency 'CHCategories/Foundation/NSObject/NSObject+CHBase'
                uibarbuttonitem_chbase.dependency 'CHCategories/UIKit/UIControl/UIControl+CHBase'
                uibarbuttonitem_chbase.dependency 'CHCategories/UIKit/UIGestureRecognizer/UIGestureRecognizer+CHBase'
                uibarbuttonitem_chbase.dependency 'CHCategories/UIKit/UIView/UIView+CHBase'
                uibarbuttonitem_chbase.source_files = 'CHCategories/Classes/UIKit/UIBarButtonItem/UIBarButtonItem+CHBase.{h,m}'
            end
        end
        
        # UIBarItem
        uikit.subspec 'UIBarItem' do |uibaritem|
            # UIBarItem+CHBase
            uibaritem.subspec 'UIBarItem+CHBase' do |uibaritem_chbase|
                uibaritem_chbase.source_files = 'CHCategories/Classes/UIKit/UIBarItem/UIBarItem+CHBase.{h,m}'
            end
        end
        
        # UIBezierPath
        uikit.subspec 'UIBezierPath' do |uibezierpath|
            # UIBezierPath+CHBase
            uibezierpath.subspec 'UIBezierPath+CHBase' do |uibezierpath_chbase|
                uibezierpath_chbase.dependency 'CHCategories/Foundation/NSArray/NSArray+CHBase'
                uibezierpath_chbase.source_files = 'CHCategories/Classes/UIKit/UIBezierPath/UIBezierPath+CHBase.{h,m}'
            end
        end
        
        # UIButton
        uikit.subspec 'UIButton' do |uibutton|
            # UIButton+CHBase
            uibutton.subspec 'UIButton+CHBase' do |uibutton_chbase|
                uibutton_chbase.dependency 'CHCategories/UIKit/UIView/UIView+CHBase'
                uibutton_chbase.source_files = 'CHCategories/Classes/UIKit/UIButton/UIButton+CHBase.{h,m}'
            end
        end
        
        # UICollectionView
        uikit.subspec 'UICollectionView' do |uicollectionview|
            # UICollectionView+CHBase
            uicollectionview.subspec 'UICollectionView+CHBase' do |uicollectionview_chbase|
                uicollectionview_chbase.dependency 'CHCategories/Foundation/NSArray/NSArray+CHBase'
                uicollectionview_chbase.dependency 'CHCategories/Foundation/NSIndexPath/NSIndexPath+CHBase'
                uicollectionview_chbase.source_files = 'CHCategories/Classes/UIKit/UICollectionView/UICollectionView+CHBase.{h,m}'
            end
        end
        
        # UICollectionViewFlowLayout
        uikit.subspec 'UICollectionViewFlowLayout' do |uicollectionviewflowlayout|
            # UICollectionViewFlowLayout+CHBase
            uicollectionviewflowlayout.subspec 'UICollectionViewFlowLayout+CHBase' do |uicollectionviewflowlayout_chbase|
                uicollectionviewflowlayout_chbase.source_files = 'CHCategories/Classes/UIKit/UICollectionViewFlowLayout/UICollectionViewFlowLayout+CHBase.{h,m}'
            end
        end
        
        # UIColor
        uikit.subspec 'UIColor' do |uicolor|
            # UIColor+CHBase
            uicolor.subspec 'UIColor+CHBase' do |uicolor_chbase|
                uicolor_chbase.source_files = 'CHCategories/Classes/UIKit/UIColor/UIColor+CHBase.{h,m}'
            end
            
            # UIColor+CHColorSpace
            uicolor.subspec 'UIColor+CHColorSpace' do |uicolor_chcolorspace|
                uicolor_chcolorspace.source_files = 'CHCategories/Classes/UIKit/UIColor/UIColor+CHColorSpace.{h,m}'
            end
        end
        
        # UIControl
        uikit.subspec 'UIControl' do |uicontrol|
            # UIControl+CHBase
            uicontrol.subspec 'UIControl+CHBase' do |uicontrol_chbase|
                uicontrol_chbase.dependency 'CHCategories/Foundation/NSObject/NSObject+CHBase'
                uicontrol_chbase.source_files = 'CHCategories/Classes/UIKit/UIControl/UIControl+CHBase.{h,m}'
            end
            
            # UIControl+CHRepeatClickPrevention
            uicontrol.subspec 'UIControl+CHRepeatClickPrevention' do |uicontrol_chrepeatclickprevention|
                uicontrol_chrepeatclickprevention.dependency 'CHCategories/Foundation/NSObject/NSObject+CHBase'
                uicontrol_chrepeatclickprevention.source_files = 'CHCategories/Classes/UIKit/UIControl/UIControl+CHRepeatClickPrevention.{h,m}'
            end
        end
        
        # UIDevice
        uikit.subspec 'UIDevice' do |uidevice|
            # UIDevice+CHBase
            uidevice.subspec 'UIDevice+CHBase' do |uidevice_ch_base|
                uidevice_ch_base.source_files = 'CHCategories/Classes/UIKit/UIDevice/UIDevice+CHBase.{h,m}'
                uidevice_ch_base.frameworks = 'CoreTelephony'
            end
            
            # UIDevice+CHMachineInfo
            uidevice.subspec 'UIDevice+CHMachineInfo' do |uidevice_ch_machineinfo|
                uidevice_ch_machineinfo.dependency 'CHCategories/CoreGraphic'
                uidevice_ch_machineinfo.dependency 'CHCategories/Foundation/NSString/NSString+CHBase'
                uidevice_ch_machineinfo.dependency 'CHCategories/UIKit/UIDevice/UIDevice+CHBase'
                uidevice_ch_machineinfo.dependency 'CHCategories/UIKit/UIScreen/UIScreen+CHBase'
                uidevice_ch_machineinfo.source_files = 'CHCategories/Classes/UIKit/UIDevice/UIDevice+CHMachineInfo.{h,m}'
            end
        end
        
        # UIFont
        uikit.subspec 'UIFont' do |uifont|
            # UIFont+CHBase
            uifont.subspec 'UIFont+CHBase' do |uifont_chbase|
                uifont_chbase.frameworks = 'CoreText', 'CoreGraphics'
                uifont_chbase.dependency 'CHCategories/UIKit/UIDevice/UIDevice+CHMachineInfo'
                uifont_chbase.source_files = 'CHCategories/Classes/UIKit/UIFont/UIFont+CHBase.{h,m}'
            end
        end
        
        # UIGestureRecognizer
        uikit.subspec 'UIGestureRecognizer' do |uigesturerecognizer|
            # UIGestureRecognizer+CHBase
            uigesturerecognizer.subspec 'UIGestureRecognizer+CHBase' do |uigesturerecognizer_chbase|
                uigesturerecognizer_chbase.dependency 'CHCategories/Foundation/NSObject/NSObject+CHBase'
                uigesturerecognizer_chbase.source_files = 'CHCategories/Classes/UIKit/UIGestureRecognizer/UIGestureRecognizer+CHBase.{h,m}'
            end
        end
        
        # UIImage
        uikit.subspec 'UIImage' do |uiimage|
            # UIImage+CHBase
            uiimage.subspec 'UIImage+CHBase' do |uiimage_chbase|
                uiimage_chbase.frameworks = 'CoreText'
                uiimage_chbase.dependency 'CHCategories/CoreGraphic'
                uiimage_chbase.dependency 'CHCategories/Foundation/NSString/NSString+CHEmoji'
                uiimage_chbase.source_files = 'CHCategories/Classes/UIKit/UIImage/UIImage+CHBase.{h,m}'
            end
            
            # UIImage+CHGIFImage
            uiimage.subspec 'UIImage+CHGIFImage' do |uiimage_chgifimage|
                uiimage_chgifimage.frameworks = 'ImageIO'
                uiimage_chgifimage.source_files = 'CHCategories/Classes/UIKit/UIImage/UIImage+CHGIFImage.{h,m}'
            end
            
            # UIImage+CHImageCompression
            uiimage.subspec 'UIImage+CHImageCompression' do |uiimage_chimagecompression|
                uiimage_chimagecompression.dependency 'CHCategories/UIKit/UIImage/UIImage+CHBase'
                uiimage_chimagecompression.source_files = 'CHCategories/Classes/UIKit/UIImage/UIImage+CHImageCompression.{h,m}'
            end
            
            # UIImage+CHImageEffect
            uiimage.subspec 'UIImage+CHImageEffect' do |uiimage_chimageeffect|
                uiimage_chimageeffect.frameworks = 'Accelerate'
                uiimage_chimageeffect.dependency 'CHCategories/CoreGraphic'
                uiimage_chimageeffect.dependency 'CHCategories/UIKit/UIImage/UIImage+CHBase'
                uiimage_chimageeffect.source_files = 'CHCategories/Classes/UIKit/UIImage/UIImage+CHImageEffect.{h,m}'
            end
        end
        
        # UINavigationBar
        uikit.subspec 'UINavigationBar' do |uinavigationBar|
            # UINavigationBar+CHBase
            uinavigationBar.subspec 'UINavigationBar+CHBase' do |uinavigationBar_chbase|
                uinavigationBar_chbase.dependency 'CHCategories/Foundation/NSObject/NSObject+CHBase'
                uinavigationBar_chbase.source_files = 'CHCategories/Classes/UIKit/UINavigationBar/UINavigationBar+CHBase.{h,m}'
            end
        end
        
        # UINavigationController
        uikit.subspec 'UINavigationController' do |uinavigationController|
            # UINavigationController+CHBase
            uinavigationController.subspec 'UINavigationController+CHBase' do |uinavigationController_chbase|
                uinavigationController_chbase.source_files = 'CHCategories/Classes/UIKit/UINavigationController/UINavigationController+CHBase.{h,m}'
            end
        end
        
        # UIScreen
        uikit.subspec 'UIScreen' do |uiscreen|
            # UIScreen+CHBase
            uiscreen.subspec 'UIScreen+CHBase' do |uiscreen_chbase|
                uiscreen_chbase.dependency 'CHCategories/UIKit/UIDevice/UIDevice+CHBase'
                uiscreen_chbase.source_files = 'CHCategories/Classes/UIKit/UIScreen/UIScreen+CHBase.{h,m}'
            end
        end
        
        # UIScrollView
        uikit.subspec 'UIScrollView' do |uiscrollview|
            # UIScrollView+CHBase
            uiscrollview.subspec 'UIScrollView+CHBase' do |uiscrollview_chbase|
                uiscrollview_chbase.dependency 'CHCategories/CoreGraphic'
                uiscrollview_chbase.source_files = 'CHCategories/Classes/UIKit/UIScrollView/UIScrollView+CHBase.{h,m}'
            end
        end
        
        # UISlider
        uikit.subspec 'UISlider' do |uislider|
            # UISlider+CHBase
            uislider.subspec 'UISlider+CHBase' do |uislider_chbase|
                uislider_chbase.source_files = 'CHCategories/Classes/UIKit/UISlider/UISlider+CHBase.{h,m}'
            end
        end
        
        # UISwipeGestureRecognizer
        uikit.subspec 'UISwipeGestureRecognizer' do |uiswipegesturerecognizer|
            # UISwipeGestureRecognizer+CHBase
            uiswipegesturerecognizer.subspec 'UISwipeGestureRecognizer+CHBase' do |uiswipegesturerecognizer_chbase|
                uiswipegesturerecognizer_chbase.dependency 'CHCategories/UIKit/UIGestureRecognizer/UIGestureRecognizer+CHBase'
                uiswipegesturerecognizer_chbase.source_files = 'CHCategories/Classes/UIKit/UISwipeGestureRecognizer/UISwipeGestureRecognizer+CHBase.{h,m}'
            end
        end
        
        # UITabBar
        uikit.subspec 'UITabBar' do |uitabbar|
            # UITabBar+CHBase
            uitabbar.subspec 'UITabBar+CHBase' do |uitabbar_chbase|
                uitabbar_chbase.dependency 'CHCategories/Foundation/NSObject/NSObject+CHBase'
                uitabbar_chbase.source_files = 'CHCategories/Classes/UIKit/UITabBar/UITabBar+CHBase.{h,m}'
            end
        end
        
        # UITabBarItem
        uikit.subspec 'UITabBarItem' do |uitabbaritem|
            # UITabBarItem+CHBase
            uitabbaritem.subspec 'UITabBarItem+CHBase' do |uitabbaritem_chbase|
                uitabbaritem_chbase.dependency 'CHCategories/UIKit/UIBarItem/UIBarItem+CHBase'
                uitabbaritem_chbase.dependency 'CHCategories/UIKit/UIDevice/UIDevice+CHMachineInfo'
                uitabbaritem_chbase.source_files = 'CHCategories/Classes/UIKit/UITabBarItem/UITabBarItem+CHBase.{h,m}'
            end
        end
        
        # UITableView
        uikit.subspec 'UITableView' do |uitableview|
            # UITableView+CHBase
            uitableview.subspec 'UITableView+CHBase' do |uitableview_chbase|
                uitableview_chbase.dependency 'CHCategories/CoreGraphic'
                uitableview_chbase.dependency 'CHCategories/Foundation/NSArray/NSArray+CHBase'
                uitableview_chbase.dependency 'CHCategories/Foundation/NSIndexPath/NSIndexPath+CHBase'
                uitableview_chbase.dependency 'CHCategories/Foundation/NSObject/NSObject+CHBase'
                uitableview_chbase.dependency 'CHCategories/UIKit/UIScrollView/UIScrollView+CHBase'
                uitableview_chbase.dependency 'CHCategories/UIKit/UIView/UIView+CHBase'
                uitableview_chbase.source_files = 'CHCategories/Classes/UIKit/UITableView/UITableView+CHBase.{h,m}'
            end
        end
        
        # UITableViewCell
        uikit.subspec 'UITableViewCell' do |uitableviewcell|
            # UITableViewCell+CHBase
            uitableviewcell.subspec 'UITableViewCell+CHBase' do |uitableviewcell_chbase|
                uitableviewcell_chbase.dependency 'CHCategories/Foundation/NSObject/NSObject+CHBase'
                uitableviewcell_chbase.source_files = 'CHCategories/Classes/UIKit/UITableViewCell/UITableViewCell+CHBase.{h,m}'
            end
        end
        
        # UITextField
        uikit.subspec 'UITextField' do |uitextfield|
            # UITextField+CHBase
            uitextfield.subspec 'UITextField+CHBase' do |uitextfield_chbase|
                uitextfield_chbase.source_files = 'CHCategories/Classes/UIKit/UITextField/UITextField+CHBase.{h,m}'
            end
        end
        
        # UIView
        uikit.subspec 'UIView' do |uiview|
            # UIView+CHAnimation
            uiview.subspec 'UIView+CHAnimation' do |uiview_chanimation|
                uiview_chanimation.source_files = 'CHCategories/Classes/UIKit/UIView/UIView+CHAnimation.{h,m}'
            end
            
            # UIView+CHBase
            uiview.subspec 'UIView+CHBase' do |uiview_chbase|
                uiview_chbase.dependency 'CHCategories/Foundation/NSArray/NSArray+CHBase'
                uiview_chbase.source_files = 'CHCategories/Classes/UIKit/UIView/UIView+CHBase.{h,m}'
            end
            
            # UIView+CHTouchInset
            uiview.subspec 'UIView+CHTouchInset' do |uiview_chtouchinset|
                uiview_chtouchinset.dependency 'CHCategories/Foundation/NSObject/NSObject+CHBase'
                uiview_chtouchinset.source_files = 'CHCategories/Classes/UIKit/UIView/UIView+CHTouchInset.{h,m}'
            end
        end
    end
    
    # QuartzCore
    s.subspec 'QuartzCore' do |quartzCore|
        
        # CALayer
        quartzCore.subspec 'CALayer' do |calayer|
            # CALayer+CHAnimation
            calayer.subspec 'CALayer+CHAnimation' do |calayer_chanimation|
                calayer_chanimation.frameworks = 'UIKit'
                calayer_chanimation.source_files = 'CHCategories/Classes/QuartzCore/CALayer/CALayer+CHAnimation.{h,m}'
            end
            
            # CALayer+CHBase
            calayer.subspec 'CALayer+CHBase' do |calayer_chbase|
                calayer_chbase.frameworks = 'UIKit'
                calayer_chbase.dependency 'CHCategories/CoreGraphic'
                calayer_chbase.source_files = 'CHCategories/Classes/QuartzCore/CALayer/CALayer+CHBase.{h,m}'
            end
        end
    end
    
    # CoreGraphic
    s.subspec 'CoreGraphic' do |coregraphic|
        coregraphic.source_files = 'CHCategories/Classes/CoreGraphic/*.{h,m}'
    end
    
    # Macro
    s.subspec 'Macro' do |macro|
        macro.frameworks = 'UIKit'
        macro.source_files = 'CHCategories/Classes/Macro/*.{h,m}'
    end
end
