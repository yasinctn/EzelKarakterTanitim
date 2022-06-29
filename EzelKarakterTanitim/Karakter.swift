//
//  Karakter.swift
//  EzelKarakterTanitim
//
//  Created by Yasin Cetin on 10.02.2022.
//

import Foundation
import UIKit


class Karakter{
    
    var karakter : String
    var bilgi : String
    var resim : UIImage
    
    init(karakter:String , bilgi: String, resim: UIImage ) {
        
        self.karakter = karakter
        self.bilgi = bilgi
        self.resim = resim
    
    }
    
}
