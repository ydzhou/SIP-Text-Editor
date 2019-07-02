//
//  LineNumberView.swift
//  SIP
//
//  Created by Yudi Zhou on 7/1/19.
//  Copyright © 2019 Yudi Zhou. All rights reserved.
//

import Cocoa

class LineNumberView: NSRulerView {
    
    var textView: NSTextView? {
        return clientView as? NSTextView
    }
    
    override init(scrollView: NSScrollView?, orientation: NSRulerView.Orientation) {
        super.init(scrollView: scrollView, orientation: orientation)
        self.clientView = scrollView?.documentView
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func drawHashMarksAndLabels(in rect: NSRect) {
        
    }
    
}
