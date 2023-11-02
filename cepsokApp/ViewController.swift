//
//  ViewController.swift
//  cepsokApp
//
//  Created by mac on 2.11.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var urunlerTableView: UITableView!
    
    var urunlerListe = [Urunler]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        urunlerTableView.delegate = self // urunlertableview ile extensionlar arasındaki bağı sağlamak için yazdım.
        urunlerTableView.dataSource = self
        
        let u1 = Urunler(urun_id: 1, urun_title: "Amigo", urun_resim_ad: "amigo", urun_description: "%100 doğal, sağlıklı ve lifli kuruyemişler.")
        
        let u2 = Urunler(urun_id: 2, urun_title: "Mis", urun_resim_ad: "mis", urun_description: "%100 sağlıklı ve besleyici süt ürünleri.")
        urunlerListe.append(u1)
        urunlerListe.append(u2)
    }


}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return urunlerListe.count // 2 urun var 2 tane lisleteme yapar.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let urun = urunlerListe[indexPath.row] // sırayla degerlerimi getirecek.
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "urunHucre", for: indexPath) as! UrunTableViewCell // UrunTableViewCell içindeki verilere erişmek için tanımlama yaptık
        cell.urunResimImageView.image = UIImage(named: urun.urun_resim_ad!)
        cell.urunTitleLabel.text = urun.urun_title!
        cell.urunDescriptionLabel.text = urun.urun_description!
        
        
        return cell
    }
}

