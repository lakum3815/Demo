//
//  ViewController.swift
//  Demo
//
//  Created by vishal lakum on 26/11/19.
//  Copyright © 2019 vishal lakum. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tblSurveyLIst: UITableView!
    
    @IBOutlet weak var lblNoData: UILabel!
    
    var pendingSurveyList = PendingSurveyListRoot()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setSurveyTable()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.getSurveyList(stop: true)
    }
    
    func setSurveyTable()
    {
        self.tblSurveyLIst.register(UINib(nibName: "SurveyListCell", bundle: nil), forCellReuseIdentifier: "SurveyListCell")
        self.tblSurveyLIst.delegate = self
        self.tblSurveyLIst.dataSource = self
        self.tblSurveyLIst.estimatedRowHeight = 44
        self.tblSurveyLIst.rowHeight = UITableView.automaticDimension
        DispatchQueue.main.async {
            self.tblSurveyLIst.tableFooterView = UIView()
        }
        self.tblSurveyLIst.reloadData()
        self.tblSurveyLIst.isHidden = true
        self.lblNoData.isHidden = false
    }
    
    
    // MARK: - Web sevice call
    
    func getSurveyList(stop: Bool) {
        PendingSurveyListRoot.shared().getSurveyList(type: "pending", stop: stop, success_block: {(model ,error) in
            
            if (model.null == nil){
                if model["Status"].boolValue {
                    self.pendingSurveyList = PendingSurveyListRoot.init(fromJson: model)
                    if self.pendingSurveyList.data.count > 0
                    {
                        self.tblSurveyLIst.isHidden = false
                        self.lblNoData.isHidden = true
                    }
                    else
                    {
                        self.tblSurveyLIst.isHidden = true
                        self.lblNoData.isHidden = false
                    }
                    self.tblSurveyLIst.reloadData()
                }
                else{
                    if model["Message"].stringValue == STR_SESSION.EXPIRED
                    {
                        self.autoLogin(callBack: {(status) in
                            if status
                            {
                                self.getSurveyList(stop: stop)
                            }
                        })
                        //                                self.logout()
                    }
                    else
                    {
                        self.showSimpleAlert("", message: model["Message"].stringValue)
                    }
                }
            }else{
                if error != nil
                {
                    
                }
            }
            
        })
    }
    
    
}
extension ViewController : UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.pendingSurveyList.data.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SurveyListCell", for: indexPath) as! SurveyListCell
        cell.lblOptions.text = self.pendingSurveyList.data[indexPath.row].title
        cell.lblDate.text = self.pendingSurveyList.data[indexPath.row].descriptionFeild
//        cell.lblDate.text = ""
        cell.customContentView.backgroundColor = AppColor.ALTERNETLISTBACKGROUND[indexPath.row % 2]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let VC = dashboardSB.instantiateViewController(withIdentifier: "SurveyQuestionsVC") as! SurveyQuestionsVC
        VC.surveyId = self.pendingSurveyList.data[indexPath.row].iD
        VC.surveyTitle = self.pendingSurveyList.data[indexPath.row].title
        VC.surveyDesc = self.pendingSurveyList.data[indexPath.row].descriptionFeild
        VC.surveyType = self.pendingSurveyList.data[indexPath.row].surveyOptionTypeID
        VC.isFromLogin = false
        self.moveOnVC(VCMove: VC, animated: true)
    }
    
}
