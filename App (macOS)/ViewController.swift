//
//  ViewController.swift
//  snapdrop
//
//  Created by Tom on 10/23/21.
//

import Cocoa
import WebKit

class ViewController: NSViewController, WKUIDelegate {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func loadView() {
        super.loadView()
        
        webView.uiDelegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = Bundle.main.url(forResource: "index", withExtension: "html", subdirectory: "Web Content")!
        webView.loadFileURL(url, allowingReadAccessTo: url)
        let request = URLRequest(url: url)
        webView.load(request)
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    func webView(_ webView: WKWebView, runOpenPanelWith parameters: WKOpenPanelParameters, initiatedByFrame frame: WKFrameInfo, completionHandler: @escaping ([URL]?) -> Void) {
        // TODO: Complete.
    }
    
}

class SDDraggableView: NSView {
    
    override func mouseDown(with event: NSEvent) {
        window?.performDrag(with: event)
    }
    
}
