//
//	surveyResultData.swift
//
//	Create by lakum rajeshbhai on 18/3/2019
//	Copyright © 2019. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class surveyResultData : NSObject, NSCoding{

	var createdOn : String!
	var iD : String!
	var optionTitle : String!
	var optionValue : String!
	var question : String!
	var questionID : String!
	var selectedOptionID : String!
	var successMessage : String!
	var surveyID : String!
	var surveyOptionTypeID : String!
    var questionHeader : String!
    var surveyQuestionImage : String!
    var surveyQuestionImageLiveUrl : String!
    var tabData : String!
    var colorCode : String!
    var title : String!
	var totalRecord : Int!
    var userID : String!
    var canShowInRadar : Bool!

    override init() {
        createdOn = ""
        iD = ""
        optionTitle = ""
        optionValue = ""
        question = ""
        questionID = ""
        selectedOptionID = ""
        successMessage = ""
        surveyID = ""
        surveyOptionTypeID = ""
        questionHeader = ""
        surveyQuestionImage = ""
        surveyQuestionImageLiveUrl = ""
        tabData = ""
        colorCode = ""
        title = ""
        totalRecord = 0
        userID = ""
        canShowInRadar = false
    }

	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		createdOn = json["CreatedOn"].stringValue
		iD = json["ID"].stringValue
		optionTitle = json["OptionTitle"].stringValue
		optionValue = json["OptionValue"].stringValue
		question = json["Question"].stringValue
		questionID = json["QuestionID"].stringValue
		selectedOptionID = json["SelectedOptionID"].stringValue
		successMessage = json["SuccessMessage"].stringValue
		surveyID = json["SurveyID"].stringValue
        surveyOptionTypeID = json["SurveyOptionTypeID"].stringValue
        questionHeader = json["QuestionHeader"].stringValue
        surveyQuestionImage = json["SurveyQuestionImage"].stringValue
        surveyQuestionImageLiveUrl = json["SurveyQuestionImageLiveUrl"].stringValue
        tabData = json["TabData"].stringValue
        colorCode = json["ColorCode"].stringValue
		title = json["Title"].stringValue
		totalRecord = json["TotalRecord"].intValue
        userID = json["UserID"].stringValue
        canShowInRadar = json["CanShowInRadar"].boolValue
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if createdOn != nil{
			dictionary["CreatedOn"] = createdOn
		}
		if iD != nil{
			dictionary["ID"] = iD
		}
		if optionTitle != nil{
			dictionary["OptionTitle"] = optionTitle
		}
		if optionValue != nil{
			dictionary["OptionValue"] = optionValue
		}
		if question != nil{
			dictionary["Question"] = question
		}
		if questionID != nil{
			dictionary["QuestionID"] = questionID
		}
		if selectedOptionID != nil{
			dictionary["SelectedOptionID"] = selectedOptionID
		}
		if successMessage != nil{
			dictionary["SuccessMessage"] = successMessage
		}
		if surveyID != nil{
			dictionary["SurveyID"] = surveyID
		}
        if surveyOptionTypeID != nil{
            dictionary["SurveyOptionTypeID"] = surveyOptionTypeID
        }
        if questionHeader != nil{
            dictionary["QuestionHeader"] = questionHeader
        }
        if surveyQuestionImage != nil{
            dictionary["SurveyQuestionImage"] = surveyQuestionImage
        }
        if surveyQuestionImageLiveUrl != nil{
            dictionary["SurveyQuestionImageLiveUrl"] = surveyQuestionImageLiveUrl
        }
        if tabData != nil{
            dictionary["TabData"] = tabData
        }
        if colorCode != nil{
            dictionary["ColorCode"] = colorCode
        }
		if title != nil{
			dictionary["Title"] = title
		}
		if totalRecord != nil{
			dictionary["TotalRecord"] = totalRecord
		}
        if userID != nil{
            dictionary["UserID"] = userID
        }
        if canShowInRadar != nil{
            dictionary["CanShowInRadar"] = canShowInRadar
        }
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         createdOn = aDecoder.decodeObject(forKey: "CreatedOn") as? String
         iD = aDecoder.decodeObject(forKey: "ID") as? String
         optionTitle = aDecoder.decodeObject(forKey: "OptionTitle") as? String
         optionValue = aDecoder.decodeObject(forKey: "OptionValue") as? String
         question = aDecoder.decodeObject(forKey: "Question") as? String
         questionID = aDecoder.decodeObject(forKey: "QuestionID") as? String
         selectedOptionID = aDecoder.decodeObject(forKey: "SelectedOptionID") as? String
         successMessage = aDecoder.decodeObject(forKey: "SuccessMessage") as? String
         surveyID = aDecoder.decodeObject(forKey: "SurveyID") as? String
        surveyOptionTypeID = aDecoder.decodeObject(forKey: "SurveyOptionTypeID") as? String
        questionHeader = aDecoder.decodeObject(forKey: "QuestionHeader") as? String
        surveyQuestionImage = aDecoder.decodeObject(forKey: "SurveyQuestionImage") as? String
        surveyQuestionImageLiveUrl = aDecoder.decodeObject(forKey: "SurveyQuestionImageLiveUrl") as? String
        tabData = aDecoder.decodeObject(forKey: "TabData") as? String
        colorCode = aDecoder.decodeObject(forKey: "ColorCode") as? String
         title = aDecoder.decodeObject(forKey: "Title") as? String
         totalRecord = aDecoder.decodeObject(forKey: "TotalRecord") as? Int
        userID = aDecoder.decodeObject(forKey: "UserID") as? String
        canShowInRadar = aDecoder.decodeObject(forKey: "CanShowInRadar") as? Bool

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    func encode(with aCoder: NSCoder)
	{
		if createdOn != nil{
			aCoder.encode(createdOn, forKey: "CreatedOn")
		}
		if iD != nil{
			aCoder.encode(iD, forKey: "ID")
		}
		if optionTitle != nil{
			aCoder.encode(optionTitle, forKey: "OptionTitle")
		}
		if optionValue != nil{
			aCoder.encode(optionValue, forKey: "OptionValue")
		}
		if question != nil{
			aCoder.encode(question, forKey: "Question")
		}
		if questionID != nil{
			aCoder.encode(questionID, forKey: "QuestionID")
		}
		if selectedOptionID != nil{
			aCoder.encode(selectedOptionID, forKey: "SelectedOptionID")
		}
		if successMessage != nil{
			aCoder.encode(successMessage, forKey: "SuccessMessage")
		}
		if surveyID != nil{
			aCoder.encode(surveyID, forKey: "SurveyID")
		}
        if surveyOptionTypeID != nil{
            aCoder.encode(surveyOptionTypeID, forKey: "SurveyOptionTypeID")
        }
        if questionHeader != nil{
            aCoder.encode(questionHeader, forKey: "QuestionHeader")
        }
        if surveyQuestionImage != nil{
            aCoder.encode(surveyQuestionImage, forKey: "SurveyQuestionImage")
        }
        if surveyQuestionImageLiveUrl != nil{
            aCoder.encode(surveyQuestionImageLiveUrl, forKey: "SurveyQuestionImageLiveUrl")
        }
        if tabData != nil{
            aCoder.encode(tabData, forKey: "TabData")
        }
        if colorCode != nil{
            aCoder.encode(colorCode, forKey: "ColorCode")
        }
		if title != nil{
			aCoder.encode(title, forKey: "Title")
		}
		if totalRecord != nil{
			aCoder.encode(totalRecord, forKey: "TotalRecord")
		}
        if userID != nil{
            aCoder.encode(userID, forKey: "UserID")
        }
        if canShowInRadar != nil{
            aCoder.encode(canShowInRadar, forKey: "CanShowInRadar")
        }

	}

}
