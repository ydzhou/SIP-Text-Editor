//
//  Document.swift
//  SIP
//
//  Created by Yudi Zhou on 6/30/19.
//  Copyright © 2019 Yudi Zhou. All rights reserved.
//

import Cocoa

class Document: NSDocument {
    
    var textContent: String?

    lazy var viewController = {
        return self.windowControllers.first?.contentViewController as? ViewController
    }()
    
    override init() {
        super.init()
        self.textContent = ""
    }

    override class var autosavesInPlace: Bool {
        return false
    }

    override func makeWindowControllers() {
        // Returns the Storyboard that contains your Document window.
        let storyboard = NSStoryboard(name: NSStoryboard.Name("Main"), bundle: nil)
        let windowController = storyboard.instantiateController(withIdentifier: NSStoryboard.SceneIdentifier("Document Window Controller")) as! NSWindowController
        self.addWindowController(windowController)
    }

    override func data(ofType typeName: String) throws -> Data {
        self.textContent = self.viewController!.textView!.string
        return self.textContent!.data(using: String.Encoding.utf8)!
    }
    
    override func read(from url: URL, ofType typeName: String) throws {
        self.textContent = try String(contentsOf: url, encoding: String.Encoding.utf8)
    }

}

