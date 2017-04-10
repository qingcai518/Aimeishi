//
//  LoginController.swift
//  Aimeishi
//
//  Created by RN-079 on 2017/04/10.
//  Copyright © 2017年 RN-079. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class CLoginController: ViewController {
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var passwordLbl: UILabel!
    @IBOutlet weak var nameTf: UITextField!
    @IBOutlet weak var passwordTf: UITextField!
    @IBOutlet weak var loginBtn : UIButton!
    
    @IBAction func doLogin() {
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setEndEditing()
        setView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    private func setView() {
        nameLbl.text = NSLocalizedString("CLogin_nameLbl", comment: "")
        passwordLbl.text = NSLocalizedString("CLogin_passwordLbl", comment: "")
        loginBtn.setTitle(NSLocalizedString("CLogin_loginBtn", comment: ""), for: .normal)
        
        Observable.combineLatest(nameTf.rx.text, passwordTf.rx.text) { (value1, value2) -> Bool in
            if (value1?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines) == "") {
                return false
            }
            
            if (value2?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines) == "") {
                return false
            }
            
            return true
        }.bind(to: loginBtn.rx.isEnabled).addDisposableTo(disposeBag)
    }
}
