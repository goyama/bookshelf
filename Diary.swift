//
//  Diary.swift
//  diary
//
//  Created by 豪山本 on 2016/06/24.
//  Copyright © 2016年 山本豪. All rights reserved.
//

import RealmSwift

class Diary: Object {
    
    //プライマリーキー
    dynamic var id = 0
    
    //タイトル
    dynamic var title = ""
    
    //本文
    dynamic var body = "本文"
    
    //本のタイトル
    dynamic var bookTitle = ""
    
    //本の写真
    dynamic var photo: UIImage? = nil
    
    //最終更新日時
    dynamic var date = NSDate()
    
    //idをプライマリーキーとして設定
    override static func primaryKey() -> String? {
        return "id"
    }
}