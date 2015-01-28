//
//  PlayerDetailsTableViewController.swift
//  Ratings
//
//  Created by Michael Reining on 1/27/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

class PlayerDetailsTableViewController: UITableViewController {
    var player: Player!
    var game: String = "Chess"

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var detailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailLabel.text = game
    }
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section == 0 {
            nameTextField.becomeFirstResponder()
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SavePlayerDetails" {
            player = Player(name: self.nameTextField.text, game: "Chess", rating: 1)
        }
    }
    
    // Setup unwind segue when users save selected game
    @IBAction func selectedGame(segue:UIStoryboardSegue) {
        let gamePickerViewController = segue.sourceViewController as GamePickerTableViewController
        if let selectedGame = gamePickerViewController.selectedGame {
            detailLabel.text = selectedGame
            game = selectedGame
        }
        self.navigationController?.popViewControllerAnimated(true)
    }
    
}
