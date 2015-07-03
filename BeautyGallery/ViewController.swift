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
    //let beauties = ["fangbingbing", "libingbing", "wangfei", "yangmi", "zhouxu"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /* 声明这个 beautyPicker 的方法是由 ViewController 来实现的 
        同时我们在 ViewControllerExtension.swift 重写了 ViewController 的方法 
        所以相当于绑定了 ViewControllerExtension.swift 的方法*/
        beautyPicker.dataSource = self
        beautyPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //当界面从 ViewController 到 GalleryViewController 的时候, 会调用这个方法
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //判定是哪个界面跳转
        if segue.identifier == "GoToGallery" {
            //取出 Row Component 第一个 Row 的数值
            let index = beautyPicker.selectedRowInComponent(0)
            
            var imageName: String?
            switch index {
            case 0:
                imageName = "fangbingbing"
            case 1:
                imageName = "libingbing"
            case 2:
                imageName = "wangfei"
            case 3:
                imageName = "yangmi"
            case 4:
                imageName = "zhouxu"
            default:
                imageName = "nil"
            }
            
            //imageName = beauties[index]
            
            //把数值 vc 传到 GalleryViewController.swift 中
            let vc = segue.destinationViewController as! GalleryViewController
            vc.imageName = imageName
        }
    }
    
    //返回按钮 让按钮能绑定到 exit
    @IBAction func close(segue: UIStoryboardSegue){
        print("closed")
    }
}

