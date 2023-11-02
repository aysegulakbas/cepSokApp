//
//  Urunler.swift
//  cepsokApp
//
//  Created by mac on 3.11.2023.
//

import Foundation

class Urunler {
    
    var urun_id:Int?
    var urun_title:String?
    var urun_resim_ad:String?
    var urun_description:String?
    
    init(urun_id:Int,urun_title:String,urun_resim_ad:String,urun_description:String) {
        self.urun_id = urun_id
        self.urun_title = urun_title
        self.urun_description = urun_description
        self.urun_resim_ad = urun_resim_ad // Shadowing yaptım.
    }
}
