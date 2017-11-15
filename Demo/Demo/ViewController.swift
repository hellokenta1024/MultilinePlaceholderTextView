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
        
        view.backgroundColor = UIColor.lightText
        
        let placeholderTextView = MultilinePlaceholderTextView()
        placeholderTextView.frame = CGRect(x: 10, y: 180, width: UIScreen.main.bounds.width - 20, height: 200)
        placeholderTextView.backgroundColor = .white
        placeholderTextView.layer.cornerRadius = 8
        
        placeholderTextView.textContainerInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        placeholderTextView.font = UIFont.systemFont(ofSize: 17)
        
        view.addSubview(placeholderTextView)
        
        placeholderTextView.placeholder = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."

        // You can use NSAttributedString for placeholder!
        //placeholderTextView.attributedPlaceholder = configureAttributedString()
    }
    
    private func configureAttributedString() -> NSAttributedString {
        
        let firstAttributes = [NSAttributedStringKey.foregroundColor: UIColor.lightGray, NSAttributedStringKey.font: UIFont.systemFont(ofSize: 17)]
        let secondAttributes = [NSAttributedStringKey.foregroundColor: UIColor.black, NSAttributedStringKey.font: UIFont.systemFont(ofSize: 17)]
        
        let first = NSMutableAttributedString(string: "AttributedStringa is also available!!!  ", attributes: firstAttributes)
        let second = NSMutableAttributedString(string: "This is amazing!!!", attributes: secondAttributes)
        
        let result = NSMutableAttributedString()
        
        result.append(first)
        result.append(second)
        
        return result
    }
}

