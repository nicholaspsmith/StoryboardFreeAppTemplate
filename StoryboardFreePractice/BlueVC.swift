//
//  BlueVC.swift
//  StoryboardFreePractice
//
//  Created by Nick on 12/8/15.
//  Copyright © 2015 Nick. All rights reserved.
//

import UIKit

class BlueVC: UIViewController {
    
    // Store references to other views
    var redVC: RedVC!
    var greenVC: GreenVC!
    
    var dictionary: [String:String] = [:]
    
    convenience init(data: [String:String]) {
        self.init(nibName: "BlueVC", bundle: nil)
        self.dictionary = data
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loadRed(sender: AnyObject) {
        redVC = RedVC(data: ["msg":"Print this when red view loads"])
        self.presentViewController(redVC, animated: true, completion: nil)
    }
    
    @IBAction func loadGreen(sender: AnyObject) {
        greenVC = GreenVC(data: ["msg":"hello world", "label": "green"])
        self.presentViewController(greenVC, animated: true, completion: nil)
    }

}

