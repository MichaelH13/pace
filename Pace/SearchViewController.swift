//
//  SearchViewController.swift
//  Pace
//
//  Created by Angel Lo on 11/10/16.
//  Copyright © 2016 Angel. All rights reserved.
//

import Foundation
import UIKit

class SearchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    //create temp list of song objects
    let songs: [[String]] = [["Usher", "Burn", "Confessions"],
                 ["Drake", "Marvin's Room", "Take Care"],
                 ["Chet Baker", "It's Always You", "Chet Baker Sings"],
                 ["Billy Joel", "Vienna", "The Stranger"],
                 ["Frank Sinatra", "The Way You Look Tonight", "Ultimate Sinatra"],
                 ["Cashmere Cat", "Trust Nobody", "Trust Nobody"],
                 ["Mumford and Sons", "Little Lion Man", "Sigh No More"],
                 ["Miguel", "Adorn", "Kaleidoscope Dream"],
                 ["Hailee Steinfield", "Rock Bottom", "HAIZ"],
                 ["James Arthur", "Can I Be Him", "Back from the Edge"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "SongResultCell")
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(self.songs.count)
        return self.songs.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell: SongResultCell = self.tableView.dequeueReusableCellWithIdentifier("SongResultCell", forIndexPath: indexPath) as! SongResultCell
        print(songs[indexPath.row][0])
        print(songs[indexPath.row][1])
        print(songs[indexPath.row][2])
        
        cell.artistNameLbl.text = songs[indexPath.row][0]
        cell.albumTitleLbl.text = songs[indexPath.row][1]
        cell.songTitleLbl.text = songs[indexPath.row][2]
        
        return cell
    }
    
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        
//    }
}
