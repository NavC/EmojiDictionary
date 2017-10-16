//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Navishkaar Prasad Chaudhari on 10/15/17.
//  Copyright © 2017 Navishkaar Prasad Chaudhari. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {

    var emojis = ["😀", "💩", "👻", "😂", "😎"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojis.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        let cfstr = NSMutableString(string: String(emojis[indexPath.row])) as CFMutableString
        var range = CFRangeMake(0, CFStringGetLength(cfstr))
        CFStringTransform(cfstr, &range, kCFStringTransformToUnicodeName, false)
        
        cell.textLabel?.text = emojis[indexPath.row] + String(cfstr)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ourSegue", sender: nil)
    }
 

}
