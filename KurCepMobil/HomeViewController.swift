//
//  ViewController.swift
//  KurCepMobil
//
//  Created by mac on 28.08.2024.
//
import Foundation
import UIKit

class HomeViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    
   
    @IBOutlet weak var siralaButton: UIButton!
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("HomeViewControler")
        tableView.dataSource = self
        tableView.delegate = self
        
        let parameters = ["access_key":"8d741de7633c622f820e145e194c0063"]
        var urlComponents = URLComponents(string: "https://data.fixer.io/api/latest")!
        
         urlComponents.queryItems = parameters.map{URLQueryItem(name: $0.key,value: $0.value)}
        
        guard let url = urlComponents.url else {
            print("invalid url")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: request) {data,response,error in
            
            if let error = error {
                print(error)
            }
            guard let httpResponse = response as? HTTPURLResponse,httpResponse.statusCode == 200 else{
                print("ınvalid responce code")
                return
            }
            
            if let data = data {
                if let dataString = String(data: data, encoding: .utf8){
                    print("Data is in String: \(dataString)")
                }
                do {
                    var jsonDecoder = JSONDecoder()
                    let response:Response = try jsonDecoder.decode(Response.self, from: data)
                    print(response.success)
                }catch let errorInparsing{
                    print("error in parsing."+errorInparsing.localizedDescription)
                }
                
                
            }
            
        }
        task.resume()
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
         let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
        
        
      

      
    
        let curr = currencyList[indexPath.row]
        let changeRate = curr.changeRate
        if (changeRate > 0.0){
            cell.changeRateLabel.textColor = UIColor.green
        }else if(changeRate<0.0){
            cell.changeRateLabel.textColor = UIColor.red
        }else{
            print("ronaldo")
        }
        
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
 
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        40
    }
    

}


