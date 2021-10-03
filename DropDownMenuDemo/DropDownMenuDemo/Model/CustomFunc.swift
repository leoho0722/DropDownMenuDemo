//
//  CustomFunc.swift
//  DropDownMenuDemo
//
//  Created by Leo Ho on 2021/10/3.
//

import Foundation
import UIKit

class CustomFunc {
    class func customSNSAlert(title: String, message: String, vc: UIViewController, fbHandler: (() -> Void)?, igHandler: (() -> Void)?) {
        let alert = UIAlertController(title: title, message: title, preferredStyle: .actionSheet)
        let fbAction = UIAlertAction(title: "Facebook", style: .default) { action in
            fbHandler?()
        }
        let igAction = UIAlertAction(title: "Instagram", style: .default) { action in
            igHandler?()
        }
        let closeAction = UIAlertAction(title: "關閉", style: .cancel, handler: nil)
        alert.addAction(fbAction)
        alert.addAction(igAction)
        alert.addAction(closeAction)
        vc.present(alert, animated: true)
    }
}
