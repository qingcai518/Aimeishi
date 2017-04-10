//
//  EnterController.swift
//  Aimeishi
//
//  Created by RN-079 on 2017/04/10.
//  Copyright © 2017年 RN-079. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class EnterController: ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    private func setView() {
        let btnSize = CGFloat(100)

        let userBtn = UIButton(frame: CGRect(x: 0, y: 0, width: btnSize, height: btnSize))
        let clientBtn = UIButton(frame: CGRect(x: 0, y: 0, width: btnSize, height: btnSize))
        
        userBtn.center = CGPoint(x: screenWidth/4, y: screenHeight/2)
        clientBtn.center = CGPoint(x: screenWidth*3/4, y: screenHeight/2)
        
        userBtn.setTitle(NSLocalizedString("Enter_userBtn", comment: ""), for: .normal)
        clientBtn.setTitle(NSLocalizedString("Enter_clientBtn", comment: ""), for: .normal)
        
        userBtn.backgroundColor = UIColor.orange
        clientBtn.backgroundColor = UIColor.blue
        
        userBtn.setTitleColor(UIColor.white, for: .normal)
        clientBtn.setTitleColor(UIColor.white, for: .normal)
        
        userBtn.titleLabel?.font = UIFont.appFont16()
        clientBtn.titleLabel?.font = UIFont.appFont16()
        
        userBtn.layer.cornerRadius = btnSize / 2
        clientBtn.layer.cornerRadius = btnSize / 2
        
        userBtn.clipsToBounds = true
        clientBtn.clipsToBounds = true
        
        userBtn.rx.tap.bind {
            
        }.addDisposableTo(disposeBag)
        
        clientBtn.rx.tap.bind { [weak self] in
            let storyboard = UIStoryboard(name: "CMain", bundle: nil)
            guard let next = storyboard.instantiateInitialViewController() else {
                return
            }
            
            self?.present(next, animated: true, completion: nil)
        }.addDisposableTo(disposeBag)
        
        view.addSubview(userBtn)
        view.addSubview(clientBtn)
    }
}
