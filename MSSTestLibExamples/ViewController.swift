//
//  ViewController.swift
//  MSSTestLibExamples
//
//  Created by mac on 29/04/2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit
import myLibrary
class ViewController: UIViewController {

    @IBOutlet var loginBtn: UIButton!
    @IBOutlet var getBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        getBtn.layer.cornerRadius = 20
        getBtn.clipsToBounds = true
        loginBtn.layer.cornerRadius = 20
        loginBtn.clipsToBounds = true
 }

    @IBAction func login(_ sender: Any) {
        guard let resourcePath = Bundle.main.path(forResource: "resources", ofType: "bundle"),
                        let bundle = Bundle(path: resourcePath) else {
                          print("no bundle")

                            return
                    }
                 guard let vc = UIStoryboard(name: "Payment", bundle: bundle).instantiateInitialViewController() else {
                  print("no vc")
                     return
                 }
                 
                      
                 self.present(vc, animated: true, completion: nil)
    }
    
}

