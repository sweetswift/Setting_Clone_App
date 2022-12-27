//
//  ViewController.swift
//  Setting_Clone_App
//
//  Created by chungwoolee on 2022/12/26.
//

import UIKit

class ViewController: UIViewController {
    
    var settingModel = [[SettingModel]]()
    
    @IBOutlet weak var settingTableView: UITableView!
    
    func makeData() {
        settingModel.append([SettingModel(leftImageName: "person.circle", menuTitle: "Sign in to your iPhone", subTitle: "Set up iCloud, the App Store, and more.", rightImageName: nil)]
        )
        settingModel.append([SettingModel(leftImageName: "gear", menuTitle: "일반", subTitle: nil, rightImageName: "chevron.right"),
                             SettingModel(leftImageName: "person.fill", menuTitle: "손쉬운 사용", subTitle: nil, rightImageName: "chevron.right"),
                             SettingModel(leftImageName: "hand.raised.fill", menuTitle: "개인정보 보호 및 보안", subTitle: nil, rightImageName: "chevron.right")])
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeData()
        
        settingTableView.delegate = self
        settingTableView.dataSource = self
        settingTableView.backgroundColor = UIColor(white: 245/255, alpha: 1)
        settingTableView.register(UINib(nibName: "ProfileCell", bundle: nil),forCellReuseIdentifier: "ProfileCell")
        
        settingTableView.register(UINib(nibName: "MenuCell", bundle: nil),forCellReuseIdentifier: "MenuCell")
    }
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return settingModel[section].count
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return settingModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0  {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCell", for: indexPath) as! ProfileCell
            cell.topTitleLabel.text = settingModel[indexPath.section][indexPath.row].menuTitle
            
            
            cell.profileImageView.image = UIImage(systemName: settingModel[indexPath.section][indexPath.row].leftImageName)
            cell.bottomDescriptionLabel.text = settingModel[indexPath.section][indexPath.row].subTitle
            
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell", for: indexPath) as! MenuCell
        
        cell.leftImageView.image = UIImage(systemName: settingModel[indexPath.section][indexPath.row].leftImageName)
        cell.middleTitleLabel.text = settingModel[indexPath.section][indexPath.row].menuTitle
        cell.rightImageView.image = UIImage(systemName: settingModel[indexPath.section][indexPath.row].rightImageName ?? "")
        
        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return UITableView.automaticDimension
        }
        return 60
    }
    
    
}

