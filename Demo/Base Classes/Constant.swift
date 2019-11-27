//
//  Constant.swift
//  TheChangeRoom
//
//  Created by lakum vishal on 03/01/19.
//  Copyright © 2019 lakum vishalbhai rajeshbhai. All rights reserved.
//

import Foundation
import UIKit

struct API
{
    static let BASEURL          = "http://"
    static let SETUP            = "GetServerAllData"
}

let mainSB = UIStoryboard(name: "Main", bundle: nil)

struct AppColor
{
    
    static let BEHAVIOURBACKGROUND : [UIColor] = [                                                  UIColor.init(hexColorString: "#C1CDD5"),
                                                                                                    UIColor.init(hexColorString: "#A4CD9C"),
                                                                                                    UIColor.init(hexColorString: "#E38EC0"),
                                                                                                    UIColor.init(hexColorString: "#474B4B"),
                                                                                                    UIColor.init(hexColorString: "#1F5B8D"),
                                                                                                    UIColor.init(hexColorString: "#0C2641"),
                                                                                                    UIColor.init(hexColorString: "#2E7EA3"),
                                                                                                    UIColor.init(hexColorString: "#DF8340")]

    static let ALTERNETLISTBACKGROUND : [UIColor] = [UIColor.init(hexColorString: "#FFFFFF"),
                                                     UIColor.init(hexColorString: "#F5F5F5")]

    static let PRIMARY              = UIColor.init(hexColorString: "#2171E5")

    static let PRIMARY_GREEN        = UIColor.init(hexColorString: "#9ed144")
    static let PRIMARY_YELLOW       = UIColor.init(hexColorString: "#EED139")
    
    static let PRIMARY_HEADER_GREEN = UIColor.init(hexColorString: "#008978")

    static let SPINNER_DOT      = UIColor.init(hexColorString: "#028DFE")

    static let BORDER           = UIColor.init(hexColorString: "#DCDCDC")
    
    static let INNER_RING       = UIColor.init(hexColorString: "#F7B844")

    static let APP_BG_FPASSWORD = UIColor.init(hexColorString: "#E6E6E6")
    
    static let PROGRSS_BAR_BG   = UIColor.init(hexColorString: "#EAEAEA")
    
    static let APP_BG           = UIColor.white

    static let ALERT_RED        = UIColor.init(hexColorString: "#F8CFCD")

    static let STATUS_BAR       = UIColor.white
    
    static let ALERT_GREEN      = UIColor.init(hexColorString: "#A1FFA6")
    
    static let TEXTFIELD        = UIColor.init(hexColorString: "#444444")
    
    static let SEARCH_TEXTFIELD = UIColor.init(hexColorString: "#444444")
    
    static let LBL_DARK         = UIColor.init(hexColorString: "#444444")
    
    static let LBL_BLACK        = UIColor.init(hexColorString: "#444444")
    
    static let BTN_WHITE        = UIColor.white
    
    static let LBL_DARK_LIGHT   = UIColor.init(hexColorString: "#444444")
    
    static let LBL_RATE         = UIColor.init(hexColorString: "#444444")

    static let lbl_GRAY         = UIColor.init(hexColorString: "#DADADA")
    
    static let LBL_QUESTION     = UIColor.init(hexColorString: "#808080")
    
    static let LBL_FORGOT_TITLE = UIColor.init(hexColorString: "#444444")
    
    static let LBL_OPTIONS      = UIColor.init(hexColorString: "#8F8F8F")
    //UIColor.init(hexColorString: "#444444")

    static let ALERT_MSG_RED    = UIColor.red
    //UIColor.init(hexColorString: "#444444")

    static let ALERT_MSG_GREEN  = AppColor.PRIMARY

//    static let ALERT_GREEN      = UIColor.init(hexColorString: "#A1FFA6")

    static let ALERT_WHITE      = UIColor.white

    static let MENU_LOCK        = UIColor.init(hexColorString: "#CDCDCD")

    static let MENU_UNLOCK        = UIColor.init(hexColorString: "#41934F")

}


struct MediaAccess {
    static let actionFileTypeHeading = "Select Imge"
    static let actionFileTypeDescription = "Chose Soource Of image"
    static let camera = "Camera"
    static let phoneLibrary = "Phone Library"
    static let video = "Video"
    static let audio = "Audio"
    static let file = "File"
    
    
    static let alertForPhotoLibraryMessage = "App does not have access to your photos. To enable access, tap settings and turn on Photo Library Access."
    
    static let alertForCameraAccessMessage = "App does not have access to your camera. To enable access, tap settings and turn on Camera."
    
    static let alertForVideoLibraryMessage = "App does not have access to your video. To enable access, tap settings and turn on Video Library Access."
    
    
    static let settingsBtnTitle = "Settings"
    static let cancelBtnTitle = "Cancel"
    
}

struct ScreenSize
{
    static let width = UIScreen.main.bounds.size.width
    static let height = UIScreen.main.bounds.size.height
    static let maxLength = max(ScreenSize.width, ScreenSize.height)
    static let minLength = min(ScreenSize.width, ScreenSize.height)
    static let frame = CGRect(x: 0, y: 0, width: ScreenSize.width, height: ScreenSize.height)
    
    static let Border:CGFloat       = 1.0
    static let ViewCorner:CGFloat   = 5.0

    static func getStatusBarHeight() -> CGFloat{
        
        if DeviceType.iPhoneX{
            return 44.0
        }else{
            return 20.0
        }
    }
}

struct DeviceType
{
    static let iPhone4orLess    = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxLength < 568.0
    static let iPhone5orSE      = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxLength == 568.0
    static let iPhone678        = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxLength == 667.0
    static let iPhone678p       = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxLength == 736.0
    static let iPhoneX          = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxLength == 812.0
    
    static let IS_IPAD          = UIDevice.current.userInterfaceIdiom == .pad && ScreenSize.maxLength == 1024.0
    static let IS_IPAD_PRO      = UIDevice.current.userInterfaceIdiom == .pad && ScreenSize.maxLength == 1366.0
}



struct Font
{

    static let FontName                     = "FiraSans"

    static let FiraSansMedium12      = UIFont(name: "FiraSans-Medium", size: 14.0)!

    static let FiraSansMedium14      = UIFont(name: "FiraSans-Medium", size: 14.0)!

    static let FiraSansMedium16      = UIFont(name: "FiraSans-Medium", size: 16.0)!

    static let FiraSansMedium18      = UIFont(name: "FiraSans-Medium", size: 18.0)!

    static let FiraSansMedium20      = UIFont(name: "FiraSans-Medium", size: 20.0)!
    
    static let FiraSansExtraLight12      = UIFont(name: "FiraSans-ExtraLight", size: 12.0)!
    static let FiraSansExtraLight14      = UIFont(name: "FiraSans-ExtraLight", size: 14.0)!
    static let FiraSansExtraLight16      = UIFont(name: "FiraSans-ExtraLight", size: 16.0)!
    static let FiraSansExtraLight18      = UIFont(name: "FiraSans-ExtraLight", size: 18.0)!
    static let FiraSansExtraLight20      = UIFont(name: "FiraSans-ExtraLight", size: 20.0)!

    static let FiraSansRegular12    = UIFont(name: "FiraSans-Regular", size: 12.0)!
    static let FiraSansRegular14    = UIFont(name: "FiraSans-Regular", size: 14.0)!
    static let FiraSansRegular16    = UIFont(name: "FiraSans-Regular", size: 16.0)!
    static let FiraSansRegular18    = UIFont(name: "FiraSans-Regular", size: 18.0)!
    static let FiraSansRegular20    = UIFont(name: "FiraSans-Regular", size: 20.0)!

    static let FiraSansBold12      = UIFont(name: "FiraSans-Bold", size: 12.0)!
    static let FiraSansBold14      = UIFont(name: "FiraSans-Bold", size: 14.0)!
    static let FiraSansBold16      = UIFont(name: "FiraSans-Bold", size: 16.0)!
    static let FiraSansBold18      = UIFont(name: "FiraSans-Bold", size: 18.0)!
    static let FiraSansBold20      = UIFont(name: "FiraSans-Bold", size: 20.0)!

}


/*
 
 //MARK:- ~~~~~~~~~~~~~~~ All IBOutlet and Variable
 //MARK:- ~~~~~~~~~~~~~~~ View Controller Life Cycle
 //MARK:- ~~~~~~~~~~~~~~~ UIButton TouchUp Inside Action
 //MARK:- ~~~~~~~~~~~~~~~ UITableView Delegate
 //MARK:- ~~~~~~~~~~~~~~~ UICollectionView Delegate
 //MARK:- ~~~~~~~~~~~~~~~ WebService Methods
 //MARK:- ~~~~~~~~~~~~~~~ Other Methods
 
 */

