//
//  secondViewController.swift
//  delegateDemo
//
//  Copyright © 2018 MyCompany. All rights reserved.
//

import UIKit

protocol ProcessStatusDelegate:NSObjectProtocol{
    func updateProcessStatus(isCompleted : Bool)
}
class secondViewController: UIViewController {
    var delegate:ProcessStatusDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
    

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var buttonBack: UIButton!
    
    @IBAction func buttonActionBack(_ sender: Any) {
        delegate?.updateProcessStatus(isCompleted: true)
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func buttonProgress(_ sender: Any) {
        delegate?.updateProcessStatus(isCompleted: false)
        self.navigationController?.popViewController(animated: true)
        
    }
    
}
