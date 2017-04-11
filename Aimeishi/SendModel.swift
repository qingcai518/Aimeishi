//
//  SetInfoModel.swift
//  Aimeishi
//
//  Created by RN-079 on 2017/04/10.
//  Copyright © 2017年 RN-079. All rights reserved.
//

import Foundation
import UIKit

class SendModel {
    var setInfos = [SendDTO]()
    
    func getSetInfos() {
        let info1 = SendDTO(icon: UIImage(named: "icon_food")!, title: "ただいま空いてます")
        let info2 = SendDTO(icon: UIImage(named: "icon_cake")!, title: "美味しいケーキ")
        let info3 = SendDTO(icon: UIImage(named: "icon_beer")!, title: "ビルあります")
        let info4 = SendDTO(icon: UIImage(named: "icon_chap")!, title: "冷たいビルどうぞ")
        let info5 = SendDTO(icon: UIImage(named: "icon_egg")!, title: "メメ目玉焼き")
        let info6 = SendDTO(icon: UIImage(named: "icon_hotsteak")!, title: "超辛いステーキ")
        let info7 = SendDTO(icon: UIImage(named: "icon_sandwitch")!, title: "サンドイッチ専門")
        let info8 = SendDTO(icon: UIImage(named: "icon_fried")!, title: "フライドポテト")
        
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
