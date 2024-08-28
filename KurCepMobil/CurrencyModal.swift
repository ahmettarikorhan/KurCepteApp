//
//  CurrencyModal.swift
//  KurCepMobil
//
//  Created by mac on 28.08.2024.
//

import Foundation
import UIKit

struct Currency {
    var changeRate:Double
    var price:Double
    let currencyIcon:UIImage
    let currencyName:String
    
}

var currencyList = [Currency(changeRate: 0.0, price: 1.0, currencyIcon: UIImage(named: "tr-circle-01")!, currencyName: "TRY"),Currency(changeRate: 1.0, price: 38.0, currencyIcon: UIImage(named: "Europe_flag_circle")!, currencyName: "EUR"),Currency(changeRate: 0.4, price: 34.0, currencyIcon: UIImage(named: "us-circle-01")!, currencyName: "USD"),Currency(changeRate: 1.3, price: 10.0, currencyIcon: UIImage(named: "323301")!, currencyName: "AED"),Currency(changeRate: 1.7, price: 40.0, currencyIcon: UIImage(named: "uk-circle-01")!, currencyName: "GBP"),Currency(changeRate: 1.0, price: 34.0, currencyIcon: UIImage(named: "tr-circle-01")!, currencyName: "TRY"),Currency(changeRate: 1.0, price: 34.0, currencyIcon: UIImage(named: "tr-circle-01")!, currencyName: "TRY"),Currency(changeRate: 1.0, price: 34.0, currencyIcon: UIImage(named: "tr-circle-01")!, currencyName: "TRY"),Currency(changeRate: 1.0, price: 34.0, currencyIcon: UIImage(named: "tr-circle-01")!, currencyName: "TRY"),Currency(changeRate: 1.0, price: 34.0, currencyIcon: UIImage(named: "tr-circle-01")!, currencyName: "TRY"),Currency(changeRate: 1.0, price: 34.0, currencyIcon: UIImage(named: "tr-circle-01")!, currencyName: "TRY"),Currency(changeRate: 1.0, price: 34.0, currencyIcon: UIImage(named: "tr-circle-01")!, currencyName: "TRY"),Currency(changeRate: 1.0, price: 34.0, currencyIcon: UIImage(named: "tr-circle-01")!, currencyName: "TRY"),Currency(changeRate: 1.0, price: 34.0, currencyIcon: UIImage(named: "tr-circle-01")!, currencyName: "TRY"),Currency(changeRate: 1.0, price: 34.0, currencyIcon: UIImage(named: "tr-circle-01")!, currencyName: "TRY"),]
