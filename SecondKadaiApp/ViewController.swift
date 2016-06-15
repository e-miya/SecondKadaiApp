//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 宮崎英美 on 2016/06/14.
//  Copyright © 2016年 taro.kirameki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let result : ResultViewController = segue.destinationViewController as!ResultViewController
        if inputName.text! != "" || inputName.text!.characters.count > 0 {
            // テキストに文字列が入力されている場合
            result.name = inputName.text!
        }else{
            // テキストが空白だった場合
            result.name = "名無し"
        }
    }

    @IBAction func unwind(segue: UIStoryboardSegue){
        // 他画面からの戻り
    }
}

