//
//  DetailedViewController.swift
//  EmojiDictionary
//
//  Created by Kyle Reddeman on 3/13/17.
//  Copyright © 2017 Kyle Reddeman. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {

    var emoji = Emoji()
    
    @IBOutlet weak var emojiPic: UILabel!
    @IBOutlet weak var emojiDescription: UILabel!
    @IBOutlet weak var emojiCatergory: UILabel!
    @IBOutlet weak var emojiBirthYear: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiPic.text = emoji.pic
        emojiDescription.text = emoji.description
        emojiBirthYear.text = "Birth year: \(emoji.birthYear)"
        emojiCatergory.text = "Catergory: \(emoji.catergory)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
