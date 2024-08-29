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

var currencyList = [Currency(changeRate: 0.0, price: 1.0, currencyIcon: UIImage(named: "tr-circle-01")!, currencyName: "TRY"),
                    Currency(changeRate: 1.0, price: 38.0, currencyIcon: UIImage(named: "Europe_flag_circle")!, currencyName: "EUR"),
                    Currency(changeRate: 0.4, price: 34.0, currencyIcon: UIImage(named: "us-circle-01")!, currencyName: "USD"),
                    Currency(changeRate: -1.3, price: 10.0, currencyIcon: UIImage(named: "323301")!, currencyName: "AED"),
                    Currency(changeRate: 1.7, price: 40.0, currencyIcon: UIImage(named: "uk-circle-01")!, currencyName: "GBP"),
                    Currency(changeRate: -3.9, price: 4.79, currencyIcon: UIImage(named: "Circle_Flag_of_the_People's_Republic_of_China.svg")!, currencyName: "CNY"),
                    Currency(changeRate: 0.9, price: 1.74, currencyIcon: UIImage(named: "mx-circle-01")!, currencyName: "MXP"),
                    Currency(changeRate: 1.1, price: 25.33, currencyIcon: UIImage(named: "ca-circle-01")!, currencyName: "CAD"),
                    Currency(changeRate: -11.5, price: 0.036, currencyIcon: UIImage(named: "flag-round-250")!, currencyName: "ARS"),
                    Currency(changeRate: -3.1, price: 0.071, currencyIcon: UIImage(named: "kz-circle-01")!, currencyName: "KZT"),
                    Currency(changeRate: 3.0, price: 9.73, currencyIcon: UIImage(named: "tm-circle-01")!, currencyName: "TMT"),
                    Currency(changeRate: -6.3, price: 0.37, currencyIcon: UIImage(named: "ru-circle-01")!, currencyName: "RUB"),
                    Currency(changeRate: 1.3, price: 9.08, currencyIcon: UIImage(named: "sa-circle-01")!, currencyName: "SAR"),]
