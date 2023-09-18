//
//  sehirler.swift
//  sehirtanitim
//
//  Created by Emir Seçer on 22.08.2023.
//

import Foundation
import UIKit

class Sehir {
    var isim : String
    var bolge :String
    var gorsel : UIImage
    
    init(isim:String, bolge:String, gorsel :UIImage) {
    self.isim = isim
    self.bolge = bolge
    self.gorsel = gorsel
}
}
