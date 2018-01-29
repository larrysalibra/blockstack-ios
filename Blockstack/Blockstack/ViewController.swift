//
//  ViewController.swift
//  Blockstack
//
//  Created by Larry Salibra on 11/5/17.
//  Copyright © 2017 Blockstack. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {
    
    public var webView: WKWebView!

    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.navigationDelegate = self
        
        let myURL = URL(string: "http://blockstack-browser.s3-website-us-west-1.amazonaws.com/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func loadURL() {
        
    }

}

