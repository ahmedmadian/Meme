//
//  MemeDetailVC.swift
//  Meme
//
//  Created by Madian on 2/20/19.
//  Copyright © 2019 Madian. All rights reserved.
//

import UIKit

class MemeDetailVC: UIViewController {

    
    var meme: Meme!
    
    @IBOutlet weak var MemeDetailImageView : UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        MemeDetailImageView.image = meme.memedImage
    }
    
    
    

}
