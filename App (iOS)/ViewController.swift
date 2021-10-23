//
//  ViewController.swift
//  snapdrop
//
//  Created by Tom on 10/23/21.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {

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

}
