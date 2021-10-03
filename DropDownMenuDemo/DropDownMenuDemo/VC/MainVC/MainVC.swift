//
//  MainVC.swift
//  DropDownMenuDemo
//
//  Created by Leo Ho on 2021/10/3.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet var options: [UIButton]!
    
    var snsURL: snsURL = .Claire
    var fbID: String!
    var igID: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func singerBtnClick(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3) {
            for option in self.options {
                option.isHidden = !option.isHidden
                self.view.layoutIfNeeded()
            }
        }
    }
    
    @IBAction func singerSNSLink(_ sender: UIButton) {
        let nextVC = SafariVC()
        if (sender.tag == 0) {
            snsURL = .Claire
            fbID = "Claire.fans/"
            igID = "cclairekuoo/"
        } else if (sender.tag == 1) {
            snsURL = .Pets
            fbID = "ohyeahpetsofficial"
            igID = "tseng_pets_ohyeah/"
        } else if (sender.tag == 2) {
            snsURL = .FangWu
            fbID = "FangWuOfficial"
            igID = "wenfang_/"
        } else if (sender.tag == 3) {
            snsURL = .ShiShi
            fbID = "SunShengXishiShi"
            igID = "shishi_sun/"
        } else if (sender.tag == 4) {
            snsURL = .Diana
            fbID = "DianaWangOfficial"
            igID = "dianawangofficial/"
        } else if (sender.tag == 5) {
            snsURL = .Waa
            fbID = "lovewaa"
            igID = "waawei/"
        } else if (sender.tag == 6) {
            snsURL = .Queen
            fbID = "queenqueenwei"
            igID = "qqqqqueen/"
        } else if (sender.tag == 7) {
            snsURL = .GEM
            fbID = "G.E.M.OfficialPage"
            igID = "gem0816/"
        } else if (sender.tag == 8) {
            snsURL = .Boon
            fbID = "boonhuilumusic"
            igID = "boonhuilu/"
        } else if (sender.tag == 9) {
            snsURL = .IU
            fbID = "iu.loen"
            igID = "dlwlrma/"
        }
        CustomFunc.customSNSAlert(title: "請點選欲前往的社群網站", message: "Facebook or Instagram", vc: self, fbHandler: {
            nextVC.snsWebSite = .facebook
            nextVC.url = self.fbID
            print("URL：\(String(describing: nextVC.url!))")
            self.navigationController?.pushViewController(nextVC, animated: true)
        }, igHandler: {
            nextVC.snsWebSite = .instagram
            nextVC.url = self.igID
            print("URL：\(String(describing: nextVC.url!))")
            self.navigationController?.pushViewController(nextVC, animated: true)
        })
    }
}
