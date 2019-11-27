//
//  MediaAccessManager.swift
//  TheChangeRoom
//
//  Created by lakum vishal on 13/01/19.
//  Copyright © 2019 lakum vishalbhai rajeshbhai. All rights reserved.
//

import UIKit
import Photos
import MobileCoreServices

class MediaAccessManager {
    
    //MARK:- ~~~~~~~~~~ shared instance

    class var shared : MediaAccessManager
    {
        struct Static
        {
            static let instance : MediaAccessManager = MediaAccessManager()
        }
        return Static.instance
    }
    
    //MARK:- ~~~~~~~~~~ complition Blocks

    var imagePickedBlock: ((UIImage) -> Void)?
    var videoPickedBlock: ((NSURL) -> Void)?

    //MARK:- ~~~~~~~~~~ Open Gallery

    func openCameraGallaryWithClick(_ strTitle : String, strMessage:String , strCameraTitle:String , strGallaryTitle : String , strCancelTitle:String,imgPicker:UIImagePickerController,ViewControll:UIViewController)
    {
        AppDelegate.shared().HideSpinnerView()
        
        DispatchQueue.main.async(execute:
            {
                let rootViewController = UIApplication.shared.delegate!.window??.rootViewController
                
                let alert = UIAlertController(title:strTitle, message:strMessage, preferredStyle: UIAlertController.Style.actionSheet)
                
                alert.view.tintColor = AppColor.LBL_BLACK
                
                // Gallary Action
                alert.addAction(UIAlertAction(title: strGallaryTitle, style: UIAlertAction.Style.default, handler: {(action:UIAlertAction) in
                    
                    print("Gallary Button Click")
                    self.openImageGallary(imgPicker: imgPicker, ViewControll: ViewControll)
                }))
                
                // Camera Action
                alert.addAction(UIAlertAction(title: strCameraTitle, style: UIAlertAction.Style.default, handler: {(action:UIAlertAction) in
                    print("Camera Button Click")
                    self.openCamera(imgPicker: imgPicker, ViewControll: ViewControll)
                }))
                
                
                // Cancel Action
                alert.addAction(UIAlertAction(title: strCancelTitle, style: UIAlertAction.Style.destructive, handler: {(action:UIAlertAction) in
                    
                    print("Cancel Button Click")
                    
                }))
                
                rootViewController!.present(alert, animated: true, completion: nil)
        })
    }
    
    func openImageGallary(imgPicker:UIImagePickerController, ViewControll:UIViewController) {
        self.checkPhotoLibraryPermission(completion: {success in
            
            if success
            {
                imgPicker.sourceType = .photoLibrary
                ViewControll.present(imgPicker, animated: true, completion: nil)
            }
            
        })
    }
    
    func openVideoGallary(imgPicker:UIImagePickerController, ViewControll:UIViewController) {
        self.checkPhotoLibraryPermission(completion: {success in
            
            if success
            {
                imgPicker.sourceType = .photoLibrary
                imgPicker.mediaTypes = [kUTTypeMovie as String, kUTTypeVideo as String]
                ViewControll.present(imgPicker, animated: true, completion: nil)
            }
            
        })
    }
    
    func openCamera(imgPicker:UIImagePickerController, ViewControll:UIViewController) {
        if !UIImagePickerController.isSourceTypeAvailable(.camera)
        {
            return
        }
        
        self.checkCameraPermission(completionHandler: {response in
            
            if response
            {
                
                imgPicker.sourceType = .camera
                
                ViewControll.present(imgPicker, animated: true, completion: nil)
            }
        })
    }
    
    //MARK:- ~~~~~~~~~~ check For Permistions
    
    func checkPhotoLibraryPermission(completion: @escaping(_ success: Bool) -> Void)
    {
        let status = PHPhotoLibrary.authorizationStatus()
        
        switch status
        {
        case .authorized:
            print("Photo Access")
            completion(true)
        case .denied, .restricted:
            
            
            print("Photo Denied and Restricted")
            
            //Photo Library not available - Alert
            
            let alertPopup = UIAlertController(title: "Photo Library Unavailable", message: "Please check to see if device settings doesn't allow photo library access", preferredStyle: .alert)
            
            let settingAction = UIAlertAction(title: "Settings", style: .destructive, handler: {(_) -> Void in
                
                
                if let url = URL(string: UIApplication.openSettingsURLString)
                {
                    if #available(iOS 10.0, *)
                    {
                        UIApplication.shared.open(url, options: [UIApplication.OpenExternalURLOptionsKey(rawValue: ""):""], completionHandler: nil)
                    }
                    else
                    {
                        UIApplication.shared.openURL(url)
                        // Fallback on earlier versions
                    }
                }
            })
            
            alertPopup.addAction(settingAction)
            
            AppDelegate.shared().rootViewController.present(alertPopup, animated: true, completion: nil)
            
            completion(false)
            
        case .notDetermined:
            
            print("Photo Not Determined")
            
            PHPhotoLibrary.requestAuthorization({ status in
                
                switch status
                {
                case .authorized:
                    print("Photo Access")
                case .denied, .restricted:
                    print("Photo Denied and Restricted")
                case .notDetermined:
                    print("Photo Not Determined")
                }
                
            })
            completion(false)
            
        }
    }
    
    func checkCameraPermission(completionHandler: @escaping (_ accessGranted: Bool) -> Void)
    {
        
        let authStatus = AVCaptureDevice.authorizationStatus(for: AVMediaType.video)
        
        switch authStatus
        {
        case .authorized:
            // Do your stuff here i.e. callCameraMethod()
            
            print("Camera Access")
            
            completionHandler(true)
            
        case .denied,.restricted:
            
            self.showAlertAction(strTitle: "Camera Unavailable", strMessage: "Please check to see if device settings doesn't allow Camera access", completion: { success in
                
                
                if let url = URL(string: UIApplication.openSettingsURLString)
                {
                    if #available(iOS 10.0, *)
                    {
                        UIApplication.shared.open(url, options: [UIApplication.OpenExternalURLOptionsKey(rawValue: ""):""], completionHandler: nil)
                    }
                    else
                    {
                        UIApplication.shared.openURL(url)
                        // Fallback on earlier versions
                    }
                    
                    completionHandler(false)
                    
                }
            })
            
        case .notDetermined:
            
            AVCaptureDevice.requestAccess(for: AVMediaType.video, completionHandler: { response in
                
                completionHandler(false)
                
                print("Privacy Camera")
            })
        }
    }
    
    func showAlertAction(strTitle:String,strMessage:String, completion: @escaping(_ success: Bool) -> Void)
    {
        AppDelegate.shared().HideSpinnerView()
        
        DispatchQueue.main.async(execute:
            {
                let rootViewController = AppDelegate.shared().window!.rootViewController as! UINavigationController
                
                let alert = UIAlertController(title:"", message:strMessage, preferredStyle: UIAlertController.Style.alert)
                
                alert.view.tintColor = AppColor.PRIMARY
                alert.addAction(UIAlertAction(title: strTitle, style: UIAlertAction.Style.default, handler: {(action:UIAlertAction) in
                    
                    completion(true)
                    
                }))
                
                rootViewController.present(alert, animated: true, completion: nil)
        })
    }
}
