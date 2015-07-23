//
//  TwitterViewController.swift
//  AggiesLand
//
//  Created by Neegbeah Reeves on 7/16/15.
//  Copyright (c) 2015 Neegbeah Reeves. All rights reserved.
//

import Foundation


import UIKit
import TwitterKit

class TwitterViewController: TWTRTimelineViewController {
    
    convenience init() {
        let client = Twitter.sharedInstance().APIClient
        let dataSource = TWTRSearchTimelineDataSource(searchQuery: "#twitterflock", APIClient: client)
        
        self.init(dataSource: dataSource)
    }
    
    override required init(dataSource: TWTRTimelineDataSource) {
        super.init(dataSource: dataSource)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}