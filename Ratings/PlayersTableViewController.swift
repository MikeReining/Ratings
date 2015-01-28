//
//  PlayersTableViewController.swift
//  Ratings
//
//  Created by Michael Reining on 1/27/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

class PlayersTableViewController: UITableViewController {
    var players: [Player] = playersData
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
 
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PlayerCell", forIndexPath: indexPath) as UITableViewCell
        
        let player = players[indexPath.row] as Player
        cell.textLabel?.text = player.name
        cell.detailTextLabel?.text = player.game
        return cell
    }
    
    
}
