//
//  ViewController.swift
//  BeautyGallery
//
//  Created by Shaowei Zhang on 15/7/3.
//  Copyright © 2015年 Shaowei Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var beautyPicker: UIPickerView!
    
    let beauties = ["范冰冰", "李冰冰", "王菲", "杨幂", "周迅"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //声明这个 beautyPicker 的方法是由 ViewController 来实现的 同时我们在 ViewControllerExtension.swift 重写了 ViewController 的方法
        // 绑定 ViewControllerExtension.swift 的方法
        beautyPicker.dataSource = self
        beautyPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

