//
//  EmojiDictionaryViewController.swift
//  Emoji Dictionary
//
//  Created by Navishkaar Prasad Chaudhari on 10/15/17.
//  Copyright © 2017 Navishkaar Prasad Chaudhari. All rights reserved.
//

import UIKit

class EmojiDictionaryViewController: UIViewController {

    
    var emoji = ""
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var lblDiscriptionEmoji: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji
      
        let s = emojiLabel.text
        if let result = s?.applyingTransform(
            kCFStringTransformToUnicodeName as StringTransform,
            reverse: false) {
            let s1 = result.replacingOccurrences(of: "\\N", with:"")
            let s2 = s1.replacingOccurrences(of: "{", with: "")
            let s3 = s2.replacingOccurrences(of: "}", with: "")
            lblDiscriptionEmoji.text = s3
        }
        
    }



}
