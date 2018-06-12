//
//  ViewController.swift
//  delegateDemo
//
//  Copyright © 2018 MyCompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController,ProcessStatusDelegate {

    @IBOutlet weak var labelStatus: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func updateProcessStatus(isCompleted : Bool){
        if isCompleted{
            self.labelStatus.text = "Process is completed"
        }else{
            self.labelStatus.text = "Process is in progress"
        }
    }
    @IBAction func buttonAction(_ sender: Any) {
        
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! secondViewController
        secondViewController.delegate = self
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
}

