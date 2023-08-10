//
//  ViewController.swift
//  ShowData2Screen
//
//  Created by MD Faizan on 10/08/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var dataTF: UITextField!
    
    
    
    var userData:[String] = []
    var testArray:[String] = ["a","b","c"]
    var dataPass:((_ userDetail:[String])->())? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let retrievedArray = UserDefaults.standard.array(forKey: "userData") as? [String] {
            userData = retrievedArray
        }
        
    }
    
    
    
    @IBAction func goToNext(_ sender: UIButton) {
        
        guard dataTF.text?.isEmpty == false else {
                return
        }
        
        userData.append(dataTF.text!)
//        print(userData)
        
       
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        
        self.navigationController?.pushViewController(secondVC, animated: true)
//        self.present(secondVC, animated: true, completion: nil)
        
        UserDefaults.standard.set(userData, forKey: "userData")
        
        secondVC.userDataForSecond = userData
        
    }
    
   
    


}

