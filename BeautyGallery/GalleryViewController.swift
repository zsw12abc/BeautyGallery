//
//  GalleryViewController.swift
//  BeautyGallery
//
//  Created by Shaowei Zhang on 15/7/4.
//  Copyright © 2015年 Shaowei Zhang. All rights reserved.
//

import UIKit
//导入 social framework 用来社交分享功能
import Social

class GalleryViewController: UIViewController {
    
    @IBOutlet weak var beautyImage: UIImageView!
    
    var imageName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /*绑定图片
        if imageName != nil {
            beautyImage.image = UIImage(named: imageName!)
        }*/
        
        //让 navigation bar 显示女神的名字
        if let name = imageName{
            beautyImage.image = UIImage(named: name)
            
            switch name {
            case "fanbingbing" :
                navigationItem.title = "范冰冰"
            case "libingbing" :
                navigationItem.title = "李冰冰"
            case "wangfei" :
                navigationItem.title = "王菲"
            case "yangmi" :
                navigationItem.title = "杨幂"
            case "zhouxun" :
                navigationItem.title = "周迅"
            default :
                navigationItem.title = nil
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 分享按钮的action
    @IBAction func shareTapped(sender: AnyObject) {
        //苹果内部有内置的一些社交 app 的分享 framework command+点击 SLServiceTypeTwitter 查看内置的分享 framework
        let controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        //分享的 text
        controller.setInitialText("一起来玩女神画廊 app 吧, 就在 Github 上")
        //分享加图片 可以加很多张
        controller.addImage(beautyImage.image)
        //present view completion 完成分享后的 call back 目前是没有 所以是 nil
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    
    
}