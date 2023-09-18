//
//  ViewController.swift
//  sehirtanitim
//
//  Created by Emir Seçer on 22.08.2023.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource  {
    @IBOutlet weak var tableview: UITableView!
    var sehirdizisi = [Sehir]()
    var kullanicisecimi : Sehir?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableview.delegate = self
        tableview.dataSource = self
        
        let istanbul = Sehir(isim: "istanbul", bolge: "marmara", gorsel: UIImage(named:"istanbul" )!)
        let ankara = Sehir(isim: "ankara", bolge: "iç anadolu", gorsel: UIImage(named:"ankara" )!)
        let izmir = Sehir(isim: "izmir", bolge: "ege", gorsel: UIImage(named:"izmir" )!)
        let antalya = Sehir(isim: "antalya", bolge: "akdeniz", gorsel: UIImage(named:"antalya" )!)
        let malatya = Sehir(isim: "malatya", bolge: "doğu anadolu", gorsel: UIImage(named:"malatya" )!)
        let sanlıurfa = Sehir(isim: "şanlıurfa", bolge: "güneydoğu anadolu", gorsel: UIImage(named:"urfa" )!)
        let rize = Sehir(isim: "rize", bolge: "karadeniz", gorsel: UIImage(named:"rize" )!)
        
         sehirdizisi = [istanbul,ankara,izmir,malatya,sanlıurfa,rize,antalya]
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sehirdizisi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = sehirdizisi[indexPath.row].isim
        return cell
}

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        kullanicisecimi = sehirdizisi[indexPath.row]
        performSegue(withIdentifier: "todetailvc", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "todetailvc" {
            let destinationvc = segue.destination as! ViewControllerdetails
            destinationvc.secilensehir = kullanicisecimi
            
        }
    }
}
