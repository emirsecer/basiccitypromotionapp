//
//  ViewControllerdetails.swift
//  sehirtanitim
//
//  Created by Emir Seçer on 22.08.2023.
//

import UIKit

class ViewControllerdetails: UIViewController {
    @IBOutlet weak var sehirbolgesi: UILabel!
    @IBOutlet weak var sehirismi: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    var secilensehir : Sehir?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sehirismi.text = secilensehir?.isim
        sehirbolgesi.text = secilensehir?.bolge
        image.image = secilensehir?.gorsel
        
    }
}
