//
//  ViewController.swift
//  SIP
//
//  Created by Yudi Zhou on 6/30/19.
//  Copyright © 2019 Yudi Zhou. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
        
    @IBOutlet var textView: NSTextView?
    
    var document: Document {
        return (view.window?.windowController!.document)! as! Document
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView?.lnv_setUpLineNumberView()
        setFont(fontName: "Menlo-Regular", fontSize: 16)
    }
    
    override func viewWillAppear() {
        textView?.string = self.document.textContent!
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    private func setFont(fontName: String, fontSize: CGFloat) {
        textView!.font = NSFont(name: fontName, size: fontSize)
    }

}

