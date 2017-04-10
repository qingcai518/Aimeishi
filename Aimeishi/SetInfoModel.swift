//
//  SetInfoModel.swift
//  Aimeishi
//
//  Created by RN-079 on 2017/04/10.
//  Copyright © 2017年 RN-079. All rights reserved.
//

import Foundation
import UIKit

class SetInfoModel {
    var setInfos = [SetInfoDTO]()
    
    func getSetInfos() {
        let info1 = SetInfoDTO(icon: UIImage(named: "")!, title: "ただいま空いてます")
        let info2 = SetInfoDTO(icon: UIImage(named: "")!, title: "唐揚げ焼きたて")
        let info3 = SetInfoDTO(icon: UIImage(named: "")!, title: "ビルあります")
        let info4 = SetInfoDTO(icon: UIImage(named: "")!, title: "44444")
        let info5 = SetInfoDTO(icon: UIImage(named: "")!, title: "55555")
        let info6 = SetInfoDTO(icon: UIImage(named: "")!, title: "66666")
        let info7 = SetInfoDTO(icon: UIImage(named: "")!, title: "77777")
        let info8 = SetInfoDTO(icon: UIImage(named: "")!, title: "88888")
        
        setInfos.append(info1)
        setInfos.append(info2)
        setInfos.append(info3)
        setInfos.append(info4)
        setInfos.append(info5)
        setInfos.append(info6)
        setInfos.append(info7)
        setInfos.append(info8)
    }
}
