//
//	PendingSurveyListRoot.swift
//
//	Create by lakum rajeshbhai on 9/3/2019
//	Copyright © 2019. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON

typealias PendingSurveyListBlock = (_ model:JSON, _ error: Error?) -> Void

class PendingSurveyListRoot : NSObject, NSCoding{

	var data : [PendingSurveyListData]!
	var message : String!
	var status : Bool!

    static var model : PendingSurveyListRoot? = nil
    
    class func shared() -> PendingSurveyListRoot {
        
        if model == nil {
            model = PendingSurveyListRoot()
        }
        return model!
    }
    
    override init() {
        status = false
        message = ""
        data = [PendingSurveyListData]()
    }

	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		data = [PendingSurveyListData]()
		let dataArray = json["Data"].arrayValue
		for dataJson in dataArray{
			let value = PendingSurveyListData(fromJson: dataJson)
			data.append(value)
		}
		message = json["Message"].stringValue
		status = json["Status"].boolValue
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if data != nil{
			var dictionaryElements = [[String:Any]]()
			for dataElement in data {
				dictionaryElements.append(dataElement.toDictionary())
			}
			dictionary["Data"] = dictionaryElements
		}
		if message != nil{
			dictionary["Message"] = message
		}
		if status != nil{
			dictionary["Status"] = status
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         data = aDecoder.decodeObject(forKey: "Data") as? [PendingSurveyListData]
         message = aDecoder.decodeObject(forKey: "Message") as? String
         status = aDecoder.decodeObject(forKey: "Status") as? Bool

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    func encode(with aCoder: NSCoder)
	{
		if data != nil{
			aCoder.encode(data, forKey: "Data")
		}
		if message != nil{
			aCoder.encode(message, forKey: "Message")
		}
		if status != nil{
			aCoder.encode(status, forKey: "Status")
		}

	}

    //web service call
    
    func getSurveyList(type:String, stop:Bool, success_block: @escaping PendingSurveyListBlock) {
        
        let param: [String:Any] = [
            "Token": Utility.getToken()!,
            "userId": Utility.getUserId()!,
            "type": type
        ]
        
        _ = APIManager.shared.GETDataFROMServerWithParam(webservice: API.BASEURL + API.SURVEYLIST, parameter: param, stop: stop, callBack: {(JSONData,error) in
            
            if error == nil{
                if JSONData != nil{
                    success_block(JSONData!, error)
                }else{
                    success_block(JSON.null, error)
                }
            }else{
                success_block(JSON.null, error)
            }
        })
    }
}
