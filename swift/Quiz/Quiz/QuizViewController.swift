//
//  ViewController.swift
//  Quiz
//
//  Created by Omer Wazir on 8/21/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    
    required init(coder: NSCoder) {
        fatalError("NSCoding not supported")
    }
    
    override init(){
        super.init(nibName: "QuizViewController", bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showQuestion(sender: AnyObject) {
        
    }
    
    @IBAction func showAnswer(sender: AnyObject) {
        
    }

}
