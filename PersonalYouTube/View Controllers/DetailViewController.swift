//
//  DetailViewController.swift
//  PersonalYouTube
//
//  Created by Maxence Bekier on 15/07/2020.
//  Copyright © 2020 Maxence Bekier. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var titleLable: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var webView: WKWebView!
    
    @IBOutlet weak var textView: UITextView!
    
    var video:Video?
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        // Clear the fields
        titleLable.text = ""
        dateLabel.text = ""
        textView.text = ""
        
        // Check if there's a video
        guard video != nil else {
            return
        }
        
        // Create an embed url
        let embedUrlString = Constants.YT_EMBED_URL + video!.videoId
        
        // Load it into the webview
        let url = URL(string: embedUrlString)
        let request = URLRequest(url: url!)
        webView.load(request)
        
        // Set the title
        titleLable.text = video!.title
        
        // Set the date
        let df = DateFormatter()
        df.dateFormat = "dd/MM/yyyy"
        dateLabel.text = df.string(from: video!.published)
        
        // Set the description
        textView.text = video!.description
        
    }

}
