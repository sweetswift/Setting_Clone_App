//
//  GenearlViewController.swift
//  Setting_Clone_App
//
//  Created by chungwoolee on 2022/12/28.
//

import UIKit

class GeneralCell: UITableViewCell {
    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var rightImageView: UIImageView! {
        didSet {
            rightImageView.image = UIImage.init(systemName: "chevron.right")
            rightImageView.backgroundColor = .clear
            rightImageView.tintColor = .lightGray
        }
    }
}

struct GeneralModel {
    var leftTitle = ""
}

class GenearlViewController: UIViewController ,
                             UITableViewDelegate, UITableViewDataSource{
    var model = [[GeneralModel]]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        model[section].count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "GeneralCell", for: indexPath) as! GeneralCell
        cell.leftLabel.text = model[indexPath.section][indexPath.row].leftTitle
        return cell
    }
    
    
    @IBOutlet weak var generaltableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "일반"
        navigationController?.navigationBar.prefersLargeTitles = false
        
        generaltableView.backgroundColor = UIColor(white: 245/255, alpha: 1)
        generaltableView.delegate = self
        generaltableView.dataSource = self
        model.append([GeneralModel(leftTitle: "정보")])
        
        model.append(  [GeneralModel(leftTitle: "키보드"),
                        GeneralModel(leftTitle: "게임 컨트롤러"),
                        GeneralModel(leftTitle: "서체"),
                        GeneralModel(leftTitle: "언어 및 지역"),
                        GeneralModel(leftTitle: "사전")])
        
        model.append( [GeneralModel(leftTitle: "전송 또는 iPhone 재설정")])
      
       
        
    }
    
    
}
