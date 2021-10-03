//
//  SafariVC.swift
//  DropDownMenuDemo
//
//  Created by Leo Ho on 2021/10/3.
//

import UIKit
import WebKit

class SafariVC: UIViewController, WKUIDelegate {

    @IBOutlet weak var webView: WKWebView!
    
    var url: String!
    var snsWebSite: SNS = .facebook

    enum SNS {
        case facebook
        case instagram
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(url!)
        webView.uiDelegate = self
        if (snsWebSite == .facebook) {
            webView.load(URLRequest(url: URL(string: "https://www.facebook.com/\(url!)")!))
        } else if (snsWebSite == .instagram) {
            webView.load(URLRequest(url: URL(string: "https://www.instagram.com/\(url!)")!))
        }
    }

}
