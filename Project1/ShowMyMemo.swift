//
//  ShowMyMemo.swift
//  Project1
//
//  Created by swucomputer on 14/04/2019.
//  Copyright © 2019 swucomputer. All rights reserved.
//

import UIKit

class ShowMyMemo: UIViewController {

    @IBOutlet var categoryLabel: UILabel!
    @IBOutlet var memoLabel: UILabel!
    
    var categoryInfo: String?
    var memoInfo: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let categoryString = categoryInfo {
            categoryLabel.text = categoryString
        }
        
        if let memoString = memoInfo {
            memoLabel.text = memoString
        }
        
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
