//
//  CMainController.swift
//  Aimeishi
//
//  Created by RN-079 on 2017/04/10.
//  Copyright © 2017年 RN-079. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class CMainController: ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        isClientLogin.asObservable().bind { [weak self] value in
            if (value) {
                return
            }
            
            let storyboard = UIStoryboard(name: "CLogin", bundle: nil)
            guard let next = storyboard.instantiateInitialViewController() else {
                return
            }
            
            self?.present(next, animated: true, completion: nil)
        }.addDisposableTo(disposeBag)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
