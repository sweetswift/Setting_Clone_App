//
//  ViewController.swift
//  Setting_Clone_App
//
//  Created by chungwoolee on 2022/12/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var settingTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingTableView.delegate = self
        settingTableView.dataSource = self
        
        let nib = UINib(nibName: "ProfileCell", bundle: nil)
        settingTableView.register(nib, forCellReuseIdentifier: "ProfileCell")
    }
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier:       "ProfileCell", for: indexPath)
        
        return cell
    }
    
    
}

