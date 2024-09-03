//
//  CurrencyResponse.swift
//  KurCepMobil
//
//  Created by mac on 3.09.2024.
//

import Foundation

struct Response:Codable{
    var success:Bool
    var base:String
    var rates : [String:Double]
}
struct CurrencyResponse {
    var currencyName:String
    var value:Double
}

var currencyResponseDict = [CurrencyResponse(currencyName: "TEST", value: 2.0)]
