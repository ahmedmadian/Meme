//
//  SavedMemeCollectionVC.swift
//  Meme
//
//  Created by Madian on 2/19/19.
//  Copyright © 2019 Madian. All rights reserved.
//

import UIKit

class SavedMemesCollectionVC: UIViewController {

    var memesList: [Meme] {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.mems
    }
    
    @IBOutlet weak var SentMemsCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        SentMemsCollectionView.dataSource = self
        SentMemsCollectionView.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? MemeDetailVC {
            let row = sender as! Int
            destinationVC.meme = memesList[row]
        }
    }

}
