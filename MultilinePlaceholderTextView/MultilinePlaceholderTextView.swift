//
//  MultilinePlaceholderTextView.swift
//  MultilinePlaceholderTextView
//
//  Created by Kenta Hara on 2017/11/12.
//  Copyright © 2017 Kenta Hara. All rights reserved.
//

import UIKit

open class MultilinePlaceholderTextView: UITextView {
    
    open lazy var placeholderTextView: UITextView = self.initializePlaceholderTextView()

    open var placeholder = "" {
        
        didSet {
            updatePlaceholderTextView()
        }
    }
    
    open var attributedPlaceholder = NSAttributedString(string: "") {
        
        didSet {
            updatePlaceholderTextView()
        }
    }
    
    open var placeholderTextColor: UIColor = .gray {
        
        didSet {
            placeholderTextView.textColor = placeholderTextColor
        }
    }
    
    open override var font: UIFont? {
        
        didSet {
            placeholderTextView.font = font
        }
    }
    
    open override var textContainerInset: UIEdgeInsets {
        
        didSet {
            
            placeholderTextView.textContainerInset = textContainerInset
        }
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    public init() {
        
        super.init(frame: CGRect.zero, textContainer: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(textDidChange), name: .UITextViewTextDidChange, object: nil)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open override func draw(_ rect: CGRect) {
        
        super.draw(rect)
        
        // autolayout of subviews of UITextView doesn't work well
        placeholderTextView.frame = CGRect(x: 0, y: 0, width: bounds.width, height: bounds.height)
    }
    
    private func initializePlaceholderTextView() -> UITextView {
        
        let textView = UITextView()
        
        textView.text = placeholder
        textView.isUserInteractionEnabled = false
        textView.textColor = .gray
        textView.backgroundColor = .clear
            
        self.addSubview(textView)
        
        return textView
    }
    
    private func updatePlaceholderTextView() {
        
        let isPlaceholderEmpty = placeholder.isEmpty && attributedPlaceholder.string.isEmpty
        placeholderTextView.isHidden = isPlaceholderEmpty || !text.isEmpty
        
        if !attributedPlaceholder.string.isEmpty {
            
            placeholderTextView.attributedText = attributedPlaceholder
        } else {
            placeholderTextView.text = placeholder
        }
    }
    
    @objc private func textDidChange() {
        
        updatePlaceholderTextView()
    }
}
