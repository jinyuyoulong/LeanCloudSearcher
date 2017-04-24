//
//  ViewController.swift
//  LeancloudSearcher
//
//  Created by fans on 2017/4/24.
//  Copyright © 2017年 Fans. All rights reserved.
//

import UIKit
import LeanCloud
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        Alamofire.request("https://leancloud.cn:443/1.1/classes/TestObject?limit=10&&order=-updatedAt&&", method:.get).responseJSON { (response) in
//            guard let JSON = response.result.value else{return}
//            print("json: \(JSON)")
//        }
//        let post = LCObject(className: "TestObject")
//
//        post.set("words", value: "Hello words1!")
//
//        let result =  post.save()
//        switch result {
//        case .success:
//            print("save success")
//        case .failure(error: let err):
//            print(err)
//        default:
//            print("")
//        }


        let query = LCQuery(className: "TestObject")

        query.get("58fd5ad48d6d8100589907ec") { result in
            switch result {
            case .success(let todo):
                print(todo)
                print(todo.get("words")?.jsonString ?? "ss")

            case .failure(let error):
                print(error)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

