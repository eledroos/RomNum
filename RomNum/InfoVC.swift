//
//  InfoVC.swift
//  RomNum
//
//  Created by Nasser Eledroos on 5/24/16.
//  Copyright © 2016 Nasser Eledroos. All rights reserved.
//

import UIKit

class InfoVC: UITableViewController {
    override func viewDidLoad() {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewDidAppear(animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
