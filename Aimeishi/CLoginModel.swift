//
//  CLoginModel.swift
//  Aimeishi
//
//  Created by RN-079 on 2017/04/10.
//  Copyright © 2017年 RN-079. All rights reserved.
//

import Foundation
import Alamofire

class CLoginModel: NSObject {
    func doLogin(name: String, password: String, completion : @escaping (String?) -> Void) {
        let params = ["name": name, "password": password]
        
        Alamofire.request(url_shopLogin, method: .get, parameters: params).responseJSON { response in
            if let error = response.error {
                return completion(error.localizedDescription)
            }
            
            guard let result = response.result.value as? NSDictionary else {
                return completion("fail to get response data.")
            }
            
            print("result = \(result)")
            
            return completion(nil)
        }
    }
}
