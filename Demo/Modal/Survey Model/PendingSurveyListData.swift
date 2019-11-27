//
//	PendingSurveyListData.swift
//
//	Create by lakum rajeshbhai on 9/3/2019
//	Copyright © 2019. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class PendingSurveyListData : NSObject, NSCoding{

	var createdBy : String!
	var createdOn : String!
	var descriptionFeild : String!
	var fPath : String!
    var fromDate : String!
    var _fromDate : String!
	var iD : String!
	var iSActive : Bool!
	var iSAvailableOnLoad : Bool!
	var modifiedBy : String!
	var statusID : String!
	var successMessage : String!
	var surveyOptionTypeID : String!
	var title : String!
    var toDate : String!
    var _toDate : String!
	var totalRecord : Int!
	var updatedOn : String!
	var pFeaturedImagePath : String!

    override init() {
        createdBy   = ""
        createdOn   = ""
        descriptionFeild   = ""
        fPath   = ""
        fromDate   = ""
        _fromDate   = ""
        iD   = ""
        iSActive   = false
        iSAvailableOnLoad = false
        modifiedBy   = ""
        statusID   = ""
        successMessage   = ""
        surveyOptionTypeID = ""
        title   = ""
        toDate   = ""
        _toDate   = ""
        totalRecord   = 0
        updatedOn   = ""
        pFeaturedImagePath   = ""
    }
	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		createdBy = json["CreatedBy"].stringValue
		createdOn = json["CreatedOn"].stringValue
		descriptionFeild = json["Description"].stringValue
		fPath = json["FPath"].stringValue
        fromDate = json["FromDate"].stringValue
        _fromDate = json["_FromDate"].stringValue
		iD = json["ID"].stringValue
		iSActive = json["ISActive"].boolValue
		iSAvailableOnLoad = json["ISAvailableOnLoad"].boolValue
		modifiedBy = json["ModifiedBy"].stringValue
		statusID = json["StatusID"].stringValue
		successMessage = json["SuccessMessage"].stringValue
		surveyOptionTypeID = json["SurveyOptionTypeID"].stringValue
		title = json["Title"].stringValue
        toDate = json["ToDate"].stringValue
        _toDate = json["_ToDate"].stringValue
		totalRecord = json["TotalRecord"].intValue
		updatedOn = json["UpdatedOn"].stringValue
		pFeaturedImagePath = json["pFeaturedImagePath"].stringValue
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if createdBy != nil{
			dictionary["CreatedBy"] = createdBy
		}
		if createdOn != nil{
			dictionary["CreatedOn"] = createdOn
		}
		if descriptionFeild != nil{
			dictionary["Description"] = descriptionFeild
		}
		if fPath != nil{
			dictionary["FPath"] = fPath
		}
        if fromDate != nil{
            dictionary["FromDate"] = fromDate
        }
        if _fromDate != nil{
            dictionary["_FromDate"] = _fromDate
        }
		if iD != nil{
			dictionary["ID"] = iD
		}
		if iSActive != nil{
			dictionary["ISActive"] = iSActive
		}
		if iSAvailableOnLoad != nil{
			dictionary["ISAvailableOnLoad"] = iSAvailableOnLoad
		}
		if modifiedBy != nil{
			dictionary["ModifiedBy"] = modifiedBy
		}
		if statusID != nil{
			dictionary["StatusID"] = statusID
		}
		if successMessage != nil{
			dictionary["SuccessMessage"] = successMessage
		}
		if surveyOptionTypeID != nil{
			dictionary["SurveyOptionTypeID"] = surveyOptionTypeID
		}
		if title != nil{
			dictionary["Title"] = title
		}
        if toDate != nil{
            dictionary["ToDate"] = toDate
        }
        if _toDate != nil{
            dictionary["_ToDate"] = _toDate
        }
		if totalRecord != nil{
			dictionary["TotalRecord"] = totalRecord
		}
		if updatedOn != nil{
			dictionary["UpdatedOn"] = updatedOn
		}
		if pFeaturedImagePath != nil{
			dictionary["pFeaturedImagePath"] = pFeaturedImagePath
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         createdBy = aDecoder.decodeObject(forKey: "CreatedBy") as? String
         createdOn = aDecoder.decodeObject(forKey: "CreatedOn") as? String
         descriptionFeild = aDecoder.decodeObject(forKey: "Description") as? String
         fPath = aDecoder.decodeObject(forKey: "FPath") as? String
         fromDate = aDecoder.decodeObject(forKey: "FromDate") as? String
         _fromDate = aDecoder.decodeObject(forKey: "_FromDate") as? String
         iD = aDecoder.decodeObject(forKey: "ID") as? String
         iSActive = aDecoder.decodeObject(forKey: "ISActive") as? Bool
         iSAvailableOnLoad = aDecoder.decodeObject(forKey: "ISAvailableOnLoad") as? Bool
         modifiedBy = aDecoder.decodeObject(forKey: "ModifiedBy") as? String
         statusID = aDecoder.decodeObject(forKey: "StatusID") as? String
         successMessage = aDecoder.decodeObject(forKey: "SuccessMessage") as? String
         surveyOptionTypeID = aDecoder.decodeObject(forKey: "SurveyOptionTypeID") as? String
         title = aDecoder.decodeObject(forKey: "Title") as? String
         toDate = aDecoder.decodeObject(forKey: "ToDate") as? String
         _toDate = aDecoder.decodeObject(forKey: "_ToDate") as? String
         totalRecord = aDecoder.decodeObject(forKey: "TotalRecord") as? Int
         updatedOn = aDecoder.decodeObject(forKey: "UpdatedOn") as? String
         pFeaturedImagePath = aDecoder.decodeObject(forKey: "pFeaturedImagePath") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    func encode(with aCoder: NSCoder)
	{
		if createdBy != nil{
			aCoder.encode(createdBy, forKey: "CreatedBy")
		}
		if createdOn != nil{
			aCoder.encode(createdOn, forKey: "CreatedOn")
		}
		if descriptionFeild != nil{
			aCoder.encode(descriptionFeild, forKey: "Description")
		}
		if fPath != nil{
			aCoder.encode(fPath, forKey: "FPath")
		}
        if fromDate != nil{
            aCoder.encode(fromDate, forKey: "FromDate")
        }
        if _fromDate != nil{
            aCoder.encode(_fromDate, forKey: "_FromDate")
        }
		if iD != nil{
			aCoder.encode(iD, forKey: "ID")
		}
		if iSActive != nil{
			aCoder.encode(iSActive, forKey: "ISActive")
		}
		if iSAvailableOnLoad != nil{
			aCoder.encode(iSAvailableOnLoad, forKey: "ISAvailableOnLoad")
		}
		if modifiedBy != nil{
			aCoder.encode(modifiedBy, forKey: "ModifiedBy")
		}
		if statusID != nil{
			aCoder.encode(statusID, forKey: "StatusID")
		}
		if successMessage != nil{
			aCoder.encode(successMessage, forKey: "SuccessMessage")
		}
		if surveyOptionTypeID != nil{
			aCoder.encode(surveyOptionTypeID, forKey: "SurveyOptionTypeID")
		}
		if title != nil{
			aCoder.encode(title, forKey: "Title")
		}
        if toDate != nil{
            aCoder.encode(toDate, forKey: "ToDate")
        }
        if _toDate != nil{
            aCoder.encode(_toDate, forKey: "_ToDate")
        }
		if totalRecord != nil{
			aCoder.encode(totalRecord, forKey: "TotalRecord")
		}
		if updatedOn != nil{
			aCoder.encode(updatedOn, forKey: "UpdatedOn")
		}
		if pFeaturedImagePath != nil{
			aCoder.encode(pFeaturedImagePath, forKey: "pFeaturedImagePath")
		}

	}

}
