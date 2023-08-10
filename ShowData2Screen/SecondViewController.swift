//
//  SecondViewController.swift
//  ShowData2Screen
//
//  Created by MD Faizan on 10/08/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var userTableView: UITableView!
    
    var userDataForSecond:[String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userTableView.dataSource = self
        userTableView.register(UINib(nibName: "UserCell", bundle: nil), forCellReuseIdentifier: "UserCell")
        
        
       
        
    }
    
    
    
}


extension SecondViewController:UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        userDataForSecond.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell") as? UserCell
        cell?.userData.text =  userDataForSecond[indexPath.row]
        
        return cell!
    }
    
    
    
}





