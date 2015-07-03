//
//  ViewControlerExtension.swift
//  BeautyGallery
//
//  Created by Shaowei Zhang on 15/7/4.
//  Copyright © 2015年 Shaowei Zhang. All rights reserved.
//

import UIKit

//静态协议信息
extension ViewController: UIPickerViewDataSource {
    //重写这俩方法 因为不是可选型 optional 所以必须全部重新写
    // returns the number of 'columns' to display.
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return beauties.count
    }
}

//动态协议信息
extension ViewController: UIPickerViewDelegate{
    //因为要重写方法 所以要删掉 optional
    // If you return back a different object, the old one will be released. the view will be centered in the row rect
    /*optional*/ func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
         return beauties[row]
    }
    
    
}