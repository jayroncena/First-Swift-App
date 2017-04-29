//
//  ViewController.swift
//  FirstApp1
//
//  Created by wonjongpill on 2017. 4. 29..
//  Copyright © 2017년 Jayron Cena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    let messageArray = ["May the force be with you", "Live long and prosper", "To infinity and beyond", "Space is big.  You just won't believe how vastly, hugely, mindbogglinly big it is",10] as [Any]
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doButtonTap(_ sender: UIButton) {
        print( "Button touched")
        if let nextString = self.messageArray[index] as? String{
            self.messageLabel.text = nextString}
        index += 1
        index %= self.messageArray.count
    }

}

