//
//  ViewController.swift
//  PodCreateSample
//
//  Created by KobeLin on 12/28/2021.
//  Copyright (c) 2021 KobeLin. All rights reserved.
//

import UIKit
import PodCreateSample
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let vc = PodImageViewController()
        present(vc, animated: false, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

