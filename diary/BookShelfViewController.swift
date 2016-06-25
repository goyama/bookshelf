//
//  BookShelfViewController.swift
//  diary
//
//  Created by 豪山本 on 2016/06/24.
//  Copyright © 2016年 山本豪. All rights reserved.
//

import UIKit
import RealmSwift

class BookShelfViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    let realm = try! Realm()
    let dtaArray = try!
        Realm().objects(Diary).sorted("date", ascending: false)


    @IBOutlet weak var collectionView: UICollectionView!
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell collectionView.dequeueReusableCellWithReuseIdentifier(r, forIndexPath: <#T##NSIndexPath#>)
    }
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
