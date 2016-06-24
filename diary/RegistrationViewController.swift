//
//  RegistrationViewController.swift
//  diary
//
//  Created by 豪山本 on 2016/06/24.
//  Copyright © 2016年 山本豪. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var bookTitleTextField:UITextField!
    
    let realm = try! Realm()
    var diary: Diary!


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func precentPickerController(sourceType: UIImagePickerControllerSourceType){
        if UIImagePickerController.isSourceTypeAvailable(sourceType){
            
            let picker = UIImagePickerController()
            
            picker.sourceType = sourceType
            
            picker.delegate = self
            
            self.presentViewController(picker, animated:true, completion: nil)
        }
    }
    func imagePickerController(picker: UIImagePickerController!, didFinishPickingImage image: UIImage!, editingInfo: NSDictionary!) {
        self.dismissViewControllerAnimated(true, completion: nil)
        
        photoImageView.image = image
    }
    @IBAction func photo(sender:UIButton){
        
        let alertController = UIAlertController(title: "画像を取得する", message: nil, preferredStyle: .ActionSheet)
        
        let cameraAction = UIAlertAction(title: "カメラ", style: .Default){
            action in
            self.precentPickerController(.Camera)
        }
        let cancelAction = UIAlertAction(title: "キャンセル", style: .Cancel, handler: nil)
        
        alertController.addAction(cameraAction)
        alertController.addAction(cancelAction)
        
        presentViewController(alertController, animated: true, completion: nil)
        
    }
   
    @IBAction func save(sender: UIButton) {
        try! realm.write {
            self.diary.bookTitle = self.bookTitleTextField.text!
            self.diary.photo = self.photoImageView.photo
            self.diary.date = NSDate()
            self.realm.add(self.diary, update: true)

        }
        self.navigationController?.popViewControllerAnimated(true)
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
