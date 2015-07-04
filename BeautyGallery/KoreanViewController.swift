//
//  KoreanViewController.swift
//  BeautyGallery
//
//  Created by Shaowei Zhang on 15/7/4.
//  Copyright © 2015年 Shaowei Zhang. All rights reserved.
//


import UIKit
import Social

class KoreanViewController: UIViewController {
    
    @IBOutlet weak var beautyImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func facebookTapped(sender: AnyObject) {
        //苹果内部有内置的一些社交 app 的分享 framework command+点击 SLServiceTypeTwitter 查看内置的分享 framework
        let controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        //分享的 text
        controller.setInitialText("一起来玩女神画廊 app 吧, 就在 Github 上")
        //分享加图片 可以加很多张
        controller.addImage(beautyImage.image)
        //present view completion 完成分享后的 call back 目前是没有 所以是 nil
        self.presentViewController(controller, animated: true, completion: nil)
    }
 
    @IBAction func twitterTapped(sender: AnyObject) {
        //苹果内部有内置的一些社交 app 的分享 framework command+点击 SLServiceTypeTwitter 查看内置的分享 framework
        let controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        //分享的 text
        controller.setInitialText("一起来玩女神画廊 app 吧, 就在 Github 上")
        //分享加图片 可以加很多张
        controller.addImage(beautyImage.image)
        //present view completion 完成分享后的 call back 目前是没有 所以是 nil
        self.presentViewController(controller, animated: true, completion: nil)

    }
    @IBAction func weiboTapped(sender: AnyObject) {
        //苹果内部有内置的一些社交 app 的分享 framework command+点击 SLServiceTypeTwitter 查看内置的分享 framework
        let controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeSinaWeibo)
        //分享的 text
        controller.setInitialText("一起来玩女神画廊 app 吧, 就在 Github 上")
        //分享加图片 可以加很多张
        controller.addImage(beautyImage.image)
        //present view completion 完成分享后的 call back 目前是没有 所以是 nil
        self.presentViewController(controller, animated: true, completion: nil)

    }
}