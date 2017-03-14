//
//  ViewController.swift
//  EmojiDictionary
//
//  Created by Kyle Reddeman on 3/13/17.
//  Copyright © 2017 Kyle Reddeman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var emojiArray: [Emoji] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
        emojiArray = populateEmojiArray()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func populateEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.description = "A smiling pile of poo"
        emoji1.pic = "💩"
        emoji1.catergory = "smileys"
        emoji1.birthYear = 2010
        
        let emoji3 = Emoji()
        emoji3.description = "Licking the 🐈"
        emoji3.pic = "👅"
        emoji3.birthYear = 2014
        emoji3.catergory = "smileys"
        
        let emoji2 = Emoji()
        emoji2.description = "A skeleton head"
        emoji2.pic = "💀"
        emoji2.birthYear = 2012
        emoji2.catergory = "smileys"
        
        let emoji4 = Emoji()
        emoji4.description = "Your standard joystick"
        emoji4.pic = "🕹"
        emoji4.birthYear = 2015
        emoji4.catergory = "objects"
        
        let emoji5 = Emoji()
        emoji5.description = "A sail boat"
        emoji5.pic = "⛵️"
        emoji5.birthYear = 2012
        emoji5.catergory = "travel and places"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5]
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojiArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "\(emojiArray[indexPath.row].pic)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        performSegue(withIdentifier: "detailedViewSegue", sender: emojiArray[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DetailedViewController
        defVC.emoji = sender as! Emoji
    }

}

