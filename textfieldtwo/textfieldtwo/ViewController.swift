//
//  ViewController.swift
//  textfieldtwo
//
//  Created by Izati Ng on 23/1/18.
//  Copyright © 2018 bklv. All rights reserved.
//  with squares.... and expandable texfield...

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textEntry: UITextView!
    
    @IBOutlet var textHeightConstraint: NSLayoutConstraint!
    
    @IBAction func dismissKeyboard(sender: UIButton) {
        self.textEntry.resignFirstResponder()
    
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

    extension ViewController: UITextViewDelegate {
        
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
            
            print(self.textEntry.contentSize.height)
            if(self.textEntry.contentSize.height < self.textHeightConstraint.constant) {
                
                self.textEntry.isScrollEnabled = false
                
            } else {
                
                self.textEntry.isScrollEnabled = true
                
            }
            
            return true
                
        }
        


        func textFieldDidEndEditing(_ textView: UITextView) {
    
            self.textEntry.resignFirstResponder()
            
        }

    }

