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
    // NOTE: These ranges are still just a subset of all the emoji characters;
    //       they seem to be all over the place...
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojis.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        cell.textLabel?.text = emojis[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let emoji = emojis[indexPath.row]
        
        performSegue(withIdentifier: "ourSegue", sender: emoji)
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiDefVC = segue.destination as! EmojiDictionaryViewController
        emojiDefVC.emoji = sender as! String
    }
    
    
    
}
