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
        let info1 = SetInfoDTO(icon: UIImage(named: "icon_food")!, title: "ただいま空いてます")
        let info2 = SetInfoDTO(icon: UIImage(named: "icon_cake")!, title: "美味しいケーキ")
        let info3 = SetInfoDTO(icon: UIImage(named: "icon_beer")!, title: "ビルあります")
        let info4 = SetInfoDTO(icon: UIImage(named: "icon_chap")!, title: "冷たいビルどうぞ")
        let info5 = SetInfoDTO(icon: UIImage(named: "icon_egg")!, title: "メメ目玉焼き")
        let info6 = SetInfoDTO(icon: UIImage(named: "icon_hotsteak")!, title: "超辛いステーキ")
        let info7 = SetInfoDTO(icon: UIImage(named: "icon_sandwitch")!, title: "サンドイッチ専門")
        let info8 = SetInfoDTO(icon: UIImage(named: "icon_fired")!, title: "フライドポテト")
        
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
