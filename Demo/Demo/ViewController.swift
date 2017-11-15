//
//  ViewController.swift
//  Demo
//
//  Created by Kenta Hara on 2017/11/15.
//  Copyright © 2017 Kenta Hara. All rights reserved.
//

import UIKit
import MultilinePlaceholderTextView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = .lightGray
        
        let placeholderTextView = MultilinePlaceholderTextView()
        placeholderTextView.center = view.center
        placeholderTextView.bounds.size = CGSize(width: 300, height: 200)
        placeholderTextView.backgroundColor = .white
        placeholderTextView.layer.cornerRadius = 8
        
        placeholderTextView.textContainerInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        placeholderTextView.font = UIFont.systemFont(ofSize: 17)
        
        view.addSubview(placeholderTextView)
        
        // If you want to use
        placeholderTextView.placeholder = "this is placeholder \nmultiline is available"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

