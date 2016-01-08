//
//  ViewController.swift
//  testfordtcoretext
//
//  Created by uniqme on 16/1/7.
//  Copyright © 2016年 elprup. All rights reserved.
//

import UIKit
import DTCoreText

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.whiteColor()
        let frame = CGRectMake(10, 30, 300, 100)
        
        let content = "<p>Hello</p><p>Hello</p><p>Hello</p><p>Hello</p><p>Hello</p>"
        let layoutManager = NSLayoutManager.init()
        let data:NSData = content.dataUsingEncoding(NSUTF8StringEncoding)!
        let options = [NSTextSizeMultiplierDocumentOption: NSNumber.init(float: 1.3),
            DTUseiOS6Attributes: true]
        let astr = NSMutableAttributedString.init(HTMLData: data,  options: options, documentAttributes: nil)
        
        let textStorage = NSTextStorage.init(attributedString: astr)
        textStorage.addLayoutManager(layoutManager)
        
        let container = NSTextContainer.init(size: frame.size)
        layoutManager.addTextContainer(container)
        
        let textView:UITextView = UITextView.init(frame: frame, textContainer: container)
        textView.backgroundColor = UIColor.init(white: 0.95, alpha: 1.0)
        self.view.addSubview(textView)
        
        
        let frame2 = CGRectMake(10, 140, 300, 100)
        let container2 = NSTextContainer.init(size: frame2.size)
        layoutManager.addTextContainer(container2)
        
        let textView2:UITextView = UITextView.init(frame: frame2, textContainer: container2)
        textView2.backgroundColor = UIColor.init(white: 0.92, alpha: 1.0)
        self.view.addSubview(textView2)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

