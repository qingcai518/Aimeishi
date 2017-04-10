//
//  AppConstants.swift
//  Aimeishi
//
//  Created by RN-079 on 2017/04/10.
//  Copyright © 2017年 RN-079. All rights reserved.
//

import Foundation
import UIKit
import RxSwift

let screenWidth = UIScreen.main.bounds.width
let screenHeight = UIScreen.main.bounds.height

var isClientLogin = Variable(UserDefaults.standard.bool(forKey: UDKey.isClientLogin))

struct UDKey {
    static let isClientLogin = "isClientLogin"
}
