//
//  ViewController.swift
//  DescendingOrder
//
//  Created by Lucas Lima Noronha on 21/06/2019.
//  Copyright © 2019 Lucas Lima Noronha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonView: UIButton!
    @IBOutlet weak var field: UITextField!
    var array: Array<Any>?
    var arrayReverse: Array<Any>?
    

    
    @objc func verify(sender: UIButton!) {
        
        openAlert()
    }
    
    func descendingOrder(of number: Int) -> Int {
        return Int(String("\(number)".characters.sorted(by: >)))!
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonView.addTarget(self, action:#selector(self.verify(sender:)), for: .touchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func openAlert(){
        let alertController = UIAlertController(title: "Result", message: descendingOrder(of: Int(field.text!)!).description, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default, handler: { _ in}))
        
        self.present(alertController, animated: true, completion: nil)
    }

}

