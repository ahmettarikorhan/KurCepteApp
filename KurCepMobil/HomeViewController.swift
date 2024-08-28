//
//  ViewController.swift
//  KurCepMobil
//
//  Created by mac on 28.08.2024.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
   
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("HomeViewControler")
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
                
        cell.imageView?.image = currencyList[indexPath.row].currencyIcon
                cell.fromLabel.text = currencyList[indexPath.row].currencyName
                cell.toLabel.text = "TRY"
                cell.changeRateLabel.text = String(currencyList[indexPath.row].changeRate)
                cell.priceLabel.text = String(currencyList[indexPath.row].price)
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currencyList.count
    }


}

